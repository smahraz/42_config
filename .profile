
flatpak_packages=(
  "https://dl.flathub.org/repo/appstream/io.gitlab.librewolf-community.flatpakref"
  "https://dl.flathub.org/repo/appstream/md.obsidian.Obsidian.flatpakref"
  "https://dl.flathub.org/repo/appstream/app.zen_browser.zen.flatpakref"
  "https://dl.flathub.org/repo/appstream/rest.insomnia.Insomnia.flatpakref"
  "https://dl.flathub.org/repo/appstream/com.mattjakeman.ExtensionManager.flatpakref"
  "https://dl.flathub.org/repo/appstream/org.gimp.GIMP.flatpakref"
  "https://dl.flathub.org/repo/appstream/org.qbittorrent.qBittorrent.flatpakref"
  "https://dl.flathub.org/repo/appstream/com.obsproject.Studio.flatpakref"
)


install_flatpaks (){
  rm $HOME/goinfre/flatpak.log
  for pkg in "${flatpak_packages[@]}"; do
    flatpak --user install -y $pkg 2>> $HOME/goinfre/flatpak.log
  done
  flatpak --user update -y
}

mkdir -p ~/goinfre/flatpak
mkdir -p $HOME/.local/bin

install_flatpaks &

curl -fsSL "https://raw.githubusercontent.com/smahraz/42_pkg/master/install.sh" > $HOME/.local/bin/42_pkg
export INSTALL_PATH="$HOME/goinfre/42_pkgs"
export TEMP_DIR="$HOME/goinfre/42_tmp"
bash $HOME/.local/bin/42_pkg lsd fzf nvim bat &
