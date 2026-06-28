#! bash


PATH="$PATH/.local/bin"

BIN_OUTPUT="$HOME/.local/bin"

mkdir -p $BIN_OUTPUT

install_fzf (){
  command -v fzf >/dev/null 2>&1 && return
  URL="https://github.com/junegunn/fzf/releases/download/v0.73.1/fzf-0.73.1-linux_amd64.tar.gz"
  wget $URL
  tar -xf $(basename $URL)
  rm -rf $(basename $URL)
  mv fzf $BIN_OUTPUT
}

install_bat (){
  command -v bat >/dev/null 2>&1 && return
  URL="https://github.com/sharkdp/bat/releases/download/v0.26.1/bat-v0.26.1-i686-unknown-linux-gnu.tar.gz"
  wget $URL
  tar -xf $(basename $URL)
  rm -rf $(basename $URL)
  mv $(basename $URL .tar.gz)/bat $BIN_OUTPUT
  rm -rf $(basename $URL .tar.gz)
}

install_fzf
install_bat


rm -rf $HOME/.oh-my-zsh
rm -rf $HOME/.zshrc
unset ZSH

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh


RAW_GITHUB_PREFIX="https://raw.githubusercontent.com/smahraz/42_config/master"
curl -fsSL "$RAW_GITHUB_PREFIX/zsh/.zshrc" > $HOME/.zshrc
curl -fsSL "$RAW_GITHUB_PREFIX/zsh/aliases.zsh" > $HOME/.oh-my-zsh/.aliases.zsh

git clone "https://github.com/zsh-users/zsh-syntax-highlighting" $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone "https://github.com/zsh-users/zsh-autosuggestions" $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone "https://github.com/Aloxaf/fzf-tab" $HOME/.oh-my-zsh/custom/plugins/fzf-tab

pip install mypy flake8 run c-formatter-42 uv black
zsh
