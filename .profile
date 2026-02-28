




mkdir -p ~/goinfre/flatpak
ls -d ~/app/flatpak/* | sort |xargs -n1 flatpak --user install -y 2> ~/goinfre/flatpak.log 1> /dev/null &


cd ~/Code/goinfre-py
if ! command -v nvim ; then
	./install.py install nvim &
fi
if ! command -v lsd ; then
	./install.py install lsd &
fi
if ! command -v bat ; then
	./install.py install bat &
fi


flatpak --user update -y 2>> ~/goinfre/flatpak.log 1> /dev/null &
