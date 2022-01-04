# Argument 1: string
function stringLength() {
  echo ${#1}
  # Alternate syntax not supported by older versions of Bash
  # echo `expr length "$1"`
}
