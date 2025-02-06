# migrate repos from gitea to Github org

# Inputs
GITEA_USERNAME=$1
GITEA_PASSWORD=$2
GITEA_ORG=$3
GITEA_REPO=$4
GITHUB_ORG=$5
GITHUB_TOKEN=$6

# Log file
LOG_FILE="migration_${GITEA_REPO}_$(date +'%Y%m%d_%H%M%S').log"

# Function to log messages with timestamps
log() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

# Redirect all output and errors to the log file
exec > >(tee -a $LOG_FILE) 2>&1

# Remove any carriage return characters
GITEA_REPO=$(echo $GITEA_REPO | tr -d '\r')

# Mirror clone the Gitea repository
log "Cloning Gitea repository ${GITEA_ORG}/${GITEA_REPO}"
GIT_SSL_NO_VERIFY=true git clone --mirror https://${GITEA_USERNAME}:${GITEA_PASSWORD}@gitea.com/${GITEA_ORG}/${GITEA_REPO}.git

# Change to the repository directory
cd ${GITEA_REPO}.git

# Create a new repository on GitHub using the GitHub API
log "Creating repository ${GITEA_REPO} on GitHub"
response=$(curl -s -o /dev/null -w "%{http_code}" -L -X POST -H "Accept: application/vnd.github+json" -H "Authorization: Bearer ${GITHUB_TOKEN}" -H "X-GitHub-Api-Version: 2022-11-28" https://sandbox.kintsugi.ai/api/v3/orgs/${GITHUB_ORG}/repos -d "{\"name\":\"${GITEA_REPO}\",\"visibility\":\"internal\"}")

if [ "$response" -eq 201 ]; then
echo "Repository ${GITEA_REPO} created successfully on GitHub."
else
echo "Failed to create repository ${GITEA_REPO} on GitHub. Status code: $response"
fi

# Set the new remote URL for GitHub
log "Setting remote URL for GitHub repository ${GITHUB_ORG}/${GITEA_REPO}"
echo "url: https://sandbox.kintsugi.ai/${GITHUB_ORG}/${GITEA_REPO}.git"
git remote set-url origin https://${GITHUB_TOKEN}@sandbox.kintsugi.ai/${GITHUB_ORG}/${GITEA_REPO}.git

# Remove pull request refs
log "Removing pull request refs"
git for-each-ref --format='%(refname)' refs/pull | xargs -n 1 git update-ref -d

# Mirror push to GitHub
echo "pushing to github"
GIT_SSL_NO_VERIFY=true git push --mirror

# Go back to the parent directory
cd ..

# Remove the cloned repository
log "Removing local repository ${GITEA_REPO}.git"
rm -rf ${GITEA_REPO}.git

log "Migration of ${GITEA_REPO} completed"