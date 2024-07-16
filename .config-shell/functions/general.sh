# Argument 1: string (script to call)
function dev() {
  if [ -f package.json -a -f pnpm-lock.yaml ]; then
    pnpm run $1
  elif [ -f package.json -a -f yarn.lock ]; then
    yarn run $1
  elif [ -f package.json ]; then
    npm run $1
  else
    echo "No package.json found."
  fi
}

# See `bootstrap-gh-labels.sh` for arguments
function runBootstrapGhLabels() {
  if ! command -v bootstrapGhLabels &> /dev/null; then
    echo "The bootstrapGhLabels program is now loaded."
    source $HOME/.config-shell/functions/bootstrap-gh-labels.sh
  else
    echo "bootstrapGhLabels already sourced."
  fi

  bootstrapGhLabels $1 $2
}
