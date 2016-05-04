
#--------------------------------------------------------------#
## Setup zplug                                                ##
#--------------------------------------------------------------#

ZPLUG_HOME="$HOME/.zsh/zplug"
if [[ ! -d "$ZPLUG_HOME" ]];then
  git clone https://github.com/zplug/zplug.git $ZPLUG_HOME
  source $ZPLUG_HOME/zplug
  zplug update --self
fi

source $ZPLUG_HOME/zplug


#--------------------------------------------------------------#
## Plugin Pre Setting                                         ##
#--------------------------------------------------------------#

# z #
_Z_CMD=j
_Z_DATA="$HOME/.zsh/.z"

# enhancd #
export ENHANCD_COMMAND=dc


#--------------------------------------------------------------#
## Plugin load                                                ##
#--------------------------------------------------------------#

zplug "olivierverdier/zsh-git-prompt", use:"*.sh"
zplug "zsh-users/zaw"
zplug "hchbaw/auto-fu.zsh", at:pu
zplug "rupa/z", use:"*.sh"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", nice:10, hook-build:"__zsh_version 4.3.17"
zplug "zsh-users/zsh-history-substring-search", hook-build:"__zsh_version 4.3"
zplug "mollifier/cd-gitroot"
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "mollifier/anyframe"

# old plugins
#zplug "autojump" # ->z
#zplug "tarruda/zsh-autosuggestions" # ->auto-fu


#--------------------------------------------------------------#
## Plugin install                                             ##
#--------------------------------------------------------------#

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load


#--------------------------------------------------------------#
## Load Plugin Configuration                                  ##
#--------------------------------------------------------------#

[ -f "$HOME/.zsh/rc/pluginconf.zsh" ] && source $HOME/.zsh/rc/pluginconf.zsh


