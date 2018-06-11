CAP_XI="Ξ"
CAP_LAMBDA="Λ"
LAMBDA="λ"

#Variables
ESC=''
MAGENTA="\["$ESC"[35m\]"
RED="\["$ESC"[31m\]"
LRED="\["$ESC"[91m\]"
LBLUE="\["$ESC"[94m\]"
LYELLOW="\["$ESC"[93m\]"
BOLD="\["$ESC"[1m\]"
NORMAL="\["$ESC"[0m\]"
COLRESET="\["$ESC"[39m\]"

# 30 	Black 	
# 31 	Red 	
# 32 	Green 	
# 33 	Yellow 	
# 34 	Blue 	
# 35 	Magenta 	
# 36 	Cyan 	
# 37 	Light gray 	
# 90 	Dark gray 	
# 91 	Light red 	
# 92 	Light green 	
# 93 	Light yellow 	
# 94 	Light blue 	
# 95 	Light magenta 	
# 96 	Light cyan 	
# 97 	White 	


PEACH="$ESC[48;5;209m"
ID=$(id -u)
unameOut="$(uname -s)"

case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
unset unameOut

if [ $TERM == "linux" ]
then
    DELIMITER="▶"
else
    DELIMITER="❯"
fi

if [ $ID -eq 0 ]
then 
    DELIMITERCOL=$RED
    DIRCOL=$LYELLOW
else
    DELIMITERCOL=$MAGENTA
    DIRCOL=$LBLUE
fi

#echo ${machine}

# Check platform

## If msys


### bash builtins
# hash
# readonly
# declare
# echo!
# let, local ?
# mapfile?
# printf?
# -> check with type
# Set ulimit?

if [ -f ~/.dotfiles/sensible.bash ]; then
   source ~/.dotfiles/sensible.bash
fi
source ~/.dotfiles/aliases 2> /dev/null

export HISTCONTROL=erasedups:ignorespace

## PS1="\[[m\]\[\033[38;5;20m\]\W\[[m\]\[\033[38;5;15m\] \[[m\]"
PS1="$DIRCOL$BOLD\W$DELIMITERCOL$DELIMITER$NORMAL "
