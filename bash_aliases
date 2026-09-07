# Alias"s to modified commands
alias cp="cp -rv"
alias mv="mv -v"
alias rm="$HOME/.local/bin/trash.sh"
alias mkdir="mkdir -pv"
alias ping="ping -c 3"
alias clr="clear"
alias grep="grep --color=auto"
alias xclass="xprop | grep WM_CLASS"
alias cat="bat --style header,snip,changes"
alias ls="ls -Ahl --color=always --group-directories-first"
alias lt="tree -L 2 --sort name"
alias ln="ln -vis"
alias echo="echo -e"
alias py3="/usr/bin/python3"
alias gitclone="/usr/bin/git clone"
alias cmds="cat $HOME/.bash_aliases"
alias mkpkg="/usr/bin/makepkg"
alias sddm-themes="/usr/bin/ls --color=always /usr/share/sddm/themes/"
alias update-alacritty="/usr/bin/alacritty migrate"
alias x="exit"
alias trash="ls $HOME/.trash/"
alias chmod="chmod -v"

# Sudo commands
alias chown="sudo chown"
alias ufw="sudo /usr/bin/ufw"

# Change directory aliases
alias home="cd $HOME/"
alias root="cd /"
alias ..="cd .."

# Conditional aliases for the OS they are on [Arch/Kali]
if [ -f /etc/arch-release ]; then
	alias install="yay -S --noconfirm"
	alias remove="yay -Rns --noconfirm"
	alias update="yay -Syyu --noconfirm"
elif [ -f /etc/debian_version ]; then
	alias install="sudo apt-get install -y"
	alias remove="sudo apt-get remove -y"
	alias update="sudo apt-get update && sudo apt-get upgrade -y"
fi

alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
