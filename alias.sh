
if [[ "root" == $(whoami) ]]
then
    alias rm='rm -i'
    alias cp='cp -i'
    alias mv='mv -i'
fi

alias cd..="cd .."
alias gitst="git status"
alias gitbr="git branch"
alias gitup="git pull origin"
alias dfh="vizex" # pip install vizex


if [[ "$OSTYPE" == "darwin"* ]]
then
    alias ll='ls -Gal'
else
    alias ll='ls -al --color'
fi



function sshkey()
{
    ssh-keygen -t rsa -b 4096 -C "$(whoami)@$(hostname)" -f ~/.ssh/id_rsa -q -N ""
    if ! command -v pbcopy &> /dev/null
    then
        pbcopy ~/.ssh/id_rsa.pub && echo "Key data copied to clipboard. For paste use 'pbpaste'"
    fi
}


function settitle()
{
    if [[ -z "$ORIG" ]]
    then
         ORIG=$PS1
    fi
    TITLE="\[\e]2;$*\a\]"
    PS1=${ORIG}${TITLE}
}


function progress_sleep()
{
    for i in `echo -n|awk "END{for(i=0;i<$1;i++)print i;}"`
    do
        echo -n .
        sleep 1
    done
}

# yum install -y idn
function pingrf()
{
    ping $(idn --quiet "$@")
}


function gitci()
{
    if [ -z "$1"]
    then
        ver=$(date +"%y.%m%d.%H%M")
    else
        ver=$1
    fi

    git pull
    git add --all .
    git commit -m "Changes V $ver"
    git push origin
    git status
}


function newdir()
{
    dname=$(date +"%y.%m%d.%H%M")
    mkdir -v $dname
    ls -al
    cd $dname
    pwd
}

