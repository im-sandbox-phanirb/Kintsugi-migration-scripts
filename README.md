# Kintsugi-migration-scripts

## Overview
This repository contains scripts to migrate repositories from Gitea to GitHub.

## Scripts

### migrate-multipe-repo.sh
This script migrates multiple repositories from Gitea to GitHub using a CSV file as input.

#### Usage
```sh
./migrate-multipe-repo.sh <GITEA_USERNAME> <GITEA_PASSWORD> <GITHUB_ORG> <GITHUB_TOKEN> <CSV_FILE>
```
example: ./migrate-multipe-repo.sh giteaUser giteaPass githubOrg githubToken migration.csv

#### CSV File
The migration.csv file contains the list of repositories to be migrated. Each line should contain the Gitea organization and repository name separated by a comma.

Example:

gitea-org,gitea-repo1

gitea-org,gitea-repo2

### migrate-single-repo.sh
This script migrates a single repository from Gitea to GitHub.

#### Usage
```sh
./migrate-single-repo.sh <GITEA_USERNAME> <GITEA_PASSWORD> <GITEA_ORG> <GITEA_REPO> <GITHUB_ORG> <GITHUB_TOKEN>
```
example: ./migrate-single-repo.sh giteaUser giteaPass giteaOrg giteaRepo githubOrg githubToken

