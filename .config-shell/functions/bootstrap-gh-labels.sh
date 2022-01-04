# This script is taken from:
# https://douglascayers.com/2019/08/01/how-to-export-and-import-github-issue-labels-between-projects
# https://gist.github.com/douglascayers/9fbc6f2ad899f12030c31f428f912b5c#file-github-copy-labels-sh

# This script uses the GitHub Labels REST API:
# https://developer.github.com/v3/issues/labels/
# as well as the `jq` program:
# https://stedolan.github.io/jq

if ! command -v jq &> /dev/null; then
  echo "The jq program could not be found!"
  echo "Please see: https://stedolan.github.io/jq/download/"
  exit
fi

# TODO: Would be great if we deleted the default GitHub labels first.

# Provide a personal access token that can access the source and target repositories.
# This is how you authorize with the GitHub API.
# https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line
GH_TOKEN="YOUR_TOKEN"

# If you use GitHub Enterprise, change this to "https://<your_domain>/api/v3"
GH_DOMAIN="https://api.github.com"

# The source repository whose labels to copy.
SRC_GH_USER="beefchimi"
SRC_GH_REPO="template-common"

# The target repository to add or update labels.
TGT_GH_USER="beefchimi"
TGT_GH_REPO="new-repo"

# ---------------------------------------------------------

# Headers used in curl commands
GH_ACCEPT_HEADER="Accept: application/vnd.github.symmetra-preview+json"
GH_AUTH_HEADER="Authorization: Bearer $GH_TOKEN"

# Bash for-loop over JSON array with jq
# https://starkandwayne.com/blog/bash-for-loop-over-json-array-using-jq/
sourceLabelsJson64=$(curl --silent -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${SRC_GH_USER}/${SRC_GH_REPO}/labels?per_page=100 | jq '[ .[] | { "name": .name, "color": .color, "description": .description } ]' | jq -r '.[] | @base64' )

# For each label from source repo,
# invoke the GitHub API to create or update the label in the target repo
for sourceLabelJson64 in $sourceLabelsJson64; do
  # base64 decode the json
  sourceLabelJson=$(echo ${sourceLabelJson64} | base64 --decode | jq -r '.')

  # Try to create the label
  # POST /repos/:owner/:repo/labels { name, color, description }
  # https://developer.github.com/v3/issues/labels/#create-a-label
  createLabelResponse=$(echo $sourceLabelJson | curl --silent -X POST -d @- -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${TGT_GH_USER}/${TGT_GH_REPO}/labels)

  # If creation failed, the response doesn't include an id and jq returns 'null'
  createdLabelId=$(echo $createLabelResponse | jq -r '.id')

  # If label wasn't created, maybe it's because it already exists... so try to update it
  if [ "$createdLabelId" == "null" ]; then
    updateLabelResponse=$(echo $sourceLabelJson | curl --silent -X PATCH -d @- -H "$GH_ACCEPT_HEADER" -H "$GH_AUTH_HEADER" ${GH_DOMAIN}/repos/${TGT_GH_USER}/${TGT_GH_REPO}/labels/$(echo $sourceLabelJson | jq -r '.name | @uri'))
    echo "Update label response:\n"$updateLabelResponse"\n"
  else
    echo "Create label response:\n"$createLabelResponse"\n"
  fi
done
