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

  # Call the migrate-single-repo.sh script
  ./migrate-single-repo.sh $GITEA_USERNAME $GITEA_PASSWORD $GITEA_ORG $GITEA_REPO $GITHUB_ORG $GITHUB_TOKEN
}

# Read the CSV file and migrate each repository
while IFS=, read -r GITEA_ORG GITEA_REPO; do
  migrate_repo $GITEA_ORG $GITEA_REPO
done < $CSV_FILE