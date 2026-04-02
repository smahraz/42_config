
# Path to your Oh My Zsh installation.


export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/goinfre/42_pkgs/bin"
export MAIL="smahraz@student.1337.ma"

ZSH_THEME="fino"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  fzf-tab
  zsh-syntax-highlighting
  zsh-autosuggestions
  rust
  uv
  docker
  golang
  flutter
  man
  qrcode
)





source $ZSH/oh-my-zsh.sh




# Aliases;
alias py="python3"
if command -v lsd> /dev/null 2>&1; then
  alias ls="lsd"
else
  echo "hello"
fi
#####################

goinfre_use() {
  CWD=$(pwd)
  cd ~/goinfre
  print -n "Your use: "
  du -h | tail -n 1|awk '{print $1}'
  df -h |grep "/goinfre" | awk '{print "Available: " $4}'

  cd $CWD
}


