




mkdir -p ~/goinfre/flatpak
mkdir -p $HOME/.local/bin
ls -d ~/app/flatpak/* | sort |xargs -n1 flatpak --user install -y 2> ~/goinfre/flatpak.log 1> /dev/null &


curl -fsSL "https://raw.githubusercontent.com/smahraz/42_pkg/master/install.sh" > $HOME/.local/bin/42_pkg
bash $HOME/.local/bin/42_pkg lsd fzf nvim bat &

flatpak --user update -y 2>> ~/goinfre/flatpak.log 1> /dev/null &
