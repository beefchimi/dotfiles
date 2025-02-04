# This script requires that you:
# 1. Have the `jq` CLI installed.
# 2. Have the `gh` CLI installed.
# 3. Are authenticated with the `gh` CLI.

# This script was originally adapted from:
# 1. https://douglascayers.com/2019/08/01/how-to-export-and-import-github-issue-labels-between-projects
# 2. https://gist.github.com/douglascayers/9fbc6f2ad899f12030c31f428f912b5c#file-github-copy-labels-sh

# Required argument: target-repo-name
ghLabelSync() {
  local REPO_NAME=$1

  if [[ -z "$REPO_NAME" ]]; then
    echo "Missing argument: <REPO_NAME> / Usage: ghLabelSync my-github-repo"
    return 1
  fi

  local REPO_SOURCE="beefchimi/template-vite-react"
  local REPO_TARGET="beefchimi/$REPO_NAME"

  # Fetch labels from the source repository
  local LABELS=$(gh label list --repo "$REPO_SOURCE" --json name,color,description -q '.')

  if [[ -z "$LABELS" || "$LABELS" == "[]" ]]; then
    echo "No labels found in $REPO_SOURCE or failed to fetch labels."
    return 1
  fi

  # Loop through labels and create them in the target repository
  echo "$LABELS" | jq -c '.[]' | while read -r localLabel; do
    local NAME=$(echo "$localLabel" | jq -r '.name')
    local COLOR=$(echo "$localLabel" | jq -r '.color')
    local DESC=$(echo "$localLabel" | jq -r '.description')

    # Validate that the label has a name and color
    if [[ -z "$NAME" || -z "$COLOR" ]]; then
      echo "Skipping invalid label: $localLabel"
      continue
    fi

    # Create or update the label in the target repository
    if gh label list --repo "$REPO_TARGET" --json name -q ".[].name" | grep -q "^$NAME$"; then
      echo "Updating label: $NAME"
      gh label edit "$NAME" --repo "$REPO_TARGET" --color "$COLOR" --description "$DESC"
    else
      echo "Creating label: $NAME"
      gh label create "$NAME" --repo "$REPO_TARGET" --color "$COLOR" --description "$DESC"
    fi
  done
}

# TODO: Consider making the `src-repo` an argument.
# Currently, it is hardcoded to `beefchimi/template-vite-react`.

# TODO: Would be great if we deleted the default GitHub labels first.

# TODO: Will be ideal to accept a prompt for arguments.
