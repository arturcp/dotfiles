# A function to extract correctly any archive based on extension
# USE: extract imazip.zip
#      extract imatar.tar
# from:
# https://github.com/flatiron-school/dotfiles/blob/3fc97f6a48580dd1fde71dde6634029156af2810/bash_profile#L115-L136
function extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1      ;;
      *.tar.gz)   tar xzf $1      ;;
      *.bz2)      bunzip2 $1      ;;
      *.rar)      rar x $1        ;;
      *.gz)       gunzip $1       ;;
      *.tar)      tar xf $1       ;;
      *.tbz2)     tar xjf $1      ;;
      *.tgz)      tar xzf $1      ;;
      *.zip)      unzip $1        ;;
      *.Z)        uncompress $1   ;;
      *)          echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Change the color of the tabs
function tab-color() {
  if [[ $# == 1 ]]
  then
    # convert hex to decimal
    hex=$1
    if [[ ${hex:0:1} == "#" ]]
    then
      # strip leading hash sign
      hex=${hex:1:6}
    fi
    if [[ ${#hex} == 3 ]]
    then
      # handle 3-letter hex codes
      hex="${hex:0:1}${hex:0:1}${hex:1:1}${hex:1:1}${hex:2:1}${hex:2:1}"
    fi
    r=$(printf "%d" 0x${hex:0:2})
    g=$(printf "%d" 0x${hex:2:2})
    b=$(printf "%d" 0x${hex:4:2})
  else
    r=$1
    g=$2
    b=$3
  fi
  echo -ne "\033]6;1;bg;red;brightness;$r\a"
  echo -ne "\033]6;1;bg;green;brightness;$g\a"
  echo -ne "\033]6;1;bg;blue;brightness;$b\a"
}
function tab-red() { tab-color 203 111 111; }
function tab-green() { tab-color 6cc276; }
function tab-yellow() { tab-color "#e8e9ac"; }
function tab-blue() { tab-color 6f8ccc; }
function tab-purple() { tab-color a789d4; }
function tab-orange() { tab-color fbbc79; }
function tab-white() { tab-color fff; }
function tab-gray() { tab-color c3c3c3c; }
function tab-reset() { echo -ne "\033]6;1;bg;*;default\a"; }
