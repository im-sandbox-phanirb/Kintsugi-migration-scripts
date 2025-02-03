#!/bin/bash
# migrate repos from gitea to Github org

# Inputs
GITEA_USERNAME=$1
GITEA_PASSWORD=$2
GITHUB_ORG=$3
GITHUB_TOKEN=$4
CSV_FILE=$5

# Function to migrate a single repository
migrate_repo() {
  GITEA_ORG=$1
  GITEA_REPO=$2

  # Remove any carriage return characters
  GITEA_REPO=$(echo $GITEA_REPO | tr -d '\r')

  # Mirror clone the Gitea repository
  GIT_SSL_NO_VERIFY=true git clone --mirror https://${GITEA_USERNAME}:${GITEA_PASSWORD}@gitea.com/${GITEA_ORG}/${GITEA_REPO}.git

  echo "clonning done"

  # Change to the repository directory
  cd ${GITEA_REPO}.git

  # Create a new repository on GitHub using the GitHub API
  echo "creating repo on github"
  response=$(curl -s -o /dev/null -w "%{http_code}" -L -X POST -H "Accept: application/vnd.github+json" -H "Authorization: Bearer ${GITHUB_TOKEN}" -H "X-GitHub-Api-Version: 2022-11-28" https://sandbox.kintsugi.ai/api/v3/orgs/${GITHUB_ORG}/repos -d "{\"name\":\"${GITEA_REPO}\",\"visibility\":\"internal\"}")

  if [ "$response" -eq 201 ]; then
    echo "Repository ${GITEA_REPO} created successfully on GitHub."
  else
    echo "Failed to create repository ${GITEA_REPO} on GitHub. Status code: $response"
  fi

  # Set the new remote URL for GitHub
  echo "setting remote url"
  echo "url: https://sandbox.kintsugi.ai/${GITHUB_ORG}/${GITEA_REPO}.git"
  git remote set-url origin https://sandbox.kintsugi.ai/${GITHUB_ORG}/${GITEA_REPO}.git

  # Remove pull request refs
  git for-each-ref --format='%(refname)' refs/pull | xargs -n 1 git update-ref -d

  # Mirror push to GitHub
  echo "pushing to github"
  GIT_SSL_NO_VERIFY=true git push --mirror

  # Go back to the parent directory
  cd ..

  rm -rf ${GITEA_REPO}.git
}

# Read the CSV file and migrate each repository
while IFS=, read -r GITEA_ORG GITEA_REPO; do
  migrate_repo $GITEA_ORG $GITEA_REPO
done < $CSV_FILE