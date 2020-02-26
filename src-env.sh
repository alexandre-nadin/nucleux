nux_script_name="${BASH_SOURCE[0]}"
nux_script_bname=$(basename "${nux_script_name%.*}")
NUX_DIR=$(dirname "$nux_script_name")

function nux::addPaths() { 
  for path in "$@"; do
    nux::addPath "$path"
  done
} && export -f nux::addPaths

function nux::addPath() {
  export PATH=${PATH}:${NUX_DIR}/${1}
}

function nux::cd() {
  cd "$NUX_DIR"
} && export -f nux::cd

nux::addPaths bin local/bin local/slash/bin

#source condactivate.sh
