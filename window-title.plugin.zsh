case $TERM in
    xterm*|termite)
	precmd () {print -Pn "\e]0;${PWD/#$HOME/~} [$(history | tail -n1 | awk '{for (i=2;i<=NF-1;i++) printf $i " "; print $NF}')]\a"}
        ;;
esac
