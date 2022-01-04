# Argument 1: string (script to call)
function dev() {
  if [ -f package.json -a -f yarn.lock ]; then
    yarn run $1
  elif [ -f package.json ]; then
    npm run $1
  else
    echo "No package.json found."
  fi
}

# Argument 1: string (path/to/directory)
function yat() {
  cd ~/Development/Yat/$1
}
