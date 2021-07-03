# Argument 1: string
function stringLength() {
  echo `expr length "$1"`
}

# Argument 1: int
function frameSegments() {
  printf '═%.0s' $(eval "echo {1.."$(($1))"}")
  # Simpler syntax, but breaks Bash compatibility:
  # printf '═%.0s' {1..$1}
}

# Argument 1: string
function drawFrameSegments() {
  local STR_LENGTH=$(stringLength "$1")
  local LENGTH_OFFSET=$(($STR_LENGTH - 2))
  echo $(frameSegments $LENGTH_OFFSET)
}

# Argument 1: string
function drawFrameTop() {
  local SEGMENTS=$(drawFrameSegments "$1")
  echo "╔$SEGMENTS╗"
}

# Argument 1: string
function drawFrameBottom() {
  local SEGMENTS=$(drawFrameSegments "$1")
  echo "╚$SEGMENTS╝"
}

# Argument 1: string
function shellTitle() {
  echo "$PROMPT_DITHER_START $1 $PROMPT_DITHER_END"
}

# Argument 1: string
function envConfirmation() {
  local TITLE_LINUX=$(shellTitle "[$1] ⩓ Zorin OS")
  local TITLE_SPIN=$(shellTitle "[$1] ꩜ Spin Shell")
  local TITLE_MAC=$(shellTitle "[$1]  Mac OS")

  if [[ $DESKTOP_SESSION == "zorin" ]]; then
    drawFrameTop "$TITLE_LINUX"
    echo $TITLE_LINUX
    drawFrameBottom "$TITLE_LINUX"
  elif [[ $SPIN ]]; then
    drawFrameTop "$TITLE_SPIN"
    echo $TITLE_SPIN
    drawFrameBottom "$TITLE_SPIN"
  else
    drawFrameTop "$TITLE_MAC"
    echo $TITLE_MAC
    drawFrameBottom "$TITLE_MAC"
  fi
}