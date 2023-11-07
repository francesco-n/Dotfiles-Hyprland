#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#export PS1="\e[32m\u \W | \e[m\$(git_branch)\$ "

alias ls='ls --color=auto'
alias cifra='~/.scripts/cifra.sh'
alias droplet='ssh frah@49.12.198.196'
alias pi='ssh frah@192.168.178.88'
alias shut='shutdown now'
alias meteo='curl wttr.in/Lodi'
alias clog='sh ~/Documents/progetti/clogs/clogs.sh'
alias fabbro='ssh francesco@marchesiilfabbro.it'
alias urlo='base64 --wrap=0 /dev/zero'
alias backup='sh /home/frah/.scripts/borg.sh'
alias vpn='sudo wg-quick up wg0'
alias vpnoff='sudo wg-quick down wg0'
alias colemak='sudo systemctl start kmonad'
alias screensaver='/home/frah/.scripts/screensaver.sh'
alias peaclock='peaclock --config-dir /home/frah/.config/peaclock'
alias giardino='$HOME/Documents/siti/giocolierementale/nuovoGiardino.sh'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfilesRepo/ --work-tree=$HOME'

export PATH=/opt/lampp/bin/:$PATH
export EDITOR=/usr/bin/vim

#PS1='\e[32m [\u \W]  \e[m'

# Created by `pipx` on 2023-07-07 07:46:32
export PATH="$PATH:/home/frah/.local/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Import colorscheme from 'wal' asynchronously
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
