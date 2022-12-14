#!/bin/bash

case ${1?"Set type argument: root or user"} in
    "root")
	# For root user add in /root/.bashrc this row:
	#echo 'PS1="\n\[\e[0;31m\]☰\[\e[0;33m\]  \t \[\e[0;31m\]❱\[\e[m\] \u@\h \[\e[0;31m\]❱\[\e[0;33m\] \w \[\e[m\]\[\e[0;31m\]❱\n❱❱❱ \[\e[m\]\[\e[0;91m\]"'
	echo 'PS1="\n\[\e[0;31m\]☰\[\e[0;33m\] \t \[\e[0;31m\]❱ \[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h \[\033[01;33m\]\w \[\033[01;35m\]\$\n\[\033[00m\]\[\e[m\]\[\e[0;31m\]❱❱❱ \[\e[m\]\[\e[0;91m\]"'
    ;;
    *)
	# For user
	# echo 'PS1="\n\[\e[32m\][ \A\[\e[m\] <\u@\h> \[\e[33m\]\w\[\e[m\] \[\e[32m\]\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]]\n\[\e[41m\][ bash: \[\e[m\]\[\e[32m\] "'
	# echo 'PS1="\n\e[0;33m☰\e[0;33m \t \e[0;93m❱ \u@\e[33;01;36m\h \033[01;33m\w \[\033[01;35m\]\$\n\e[m\e[0;93m❱❱❱ \e[m\e[32m"'
	#echo 'PS1="\n\[\e[48;5;28;1;5;0;33m\]▶\[\e[48;5;28;97m\]  \A  \[\e[48;5;34;38;5;232m\]\[\e[1;5;33m\]▶\[\e[38;5;232m\]  \u@\h  \[\e[48;5;30m\]\[\e[1;5;33m\]▶\[\e[38;5;15m\] \w \[\e[40;1;5;33m\]▶  \[\e[40;32m\]\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n\[\e[1;5;33m\]❱ \[\e[m\]\[\e[32m\]"'
    echo 'PS1="\e[0;93m┌[\u@\H]\e[0;95m[\D{%y.%m.%d}|\t]\e[0;96m❱ \w ❱\e[m\e[32m \e[0;91m\$git_branch\n\e[0;93m└[\e[m\e[32m"'
;;
esac


# Default Git enabled prompt with dirty state
# export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Another variant:
# export PS1="\[$bldgrn\]\u@\h\[$txtrst\] \w \[$bldylw\]\$git_branch\[$txtcyn\]\$git_dirty\[$txtrst\]\$ "

# Default Git enabled root prompt (for use with "sudo -s")
# export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "
