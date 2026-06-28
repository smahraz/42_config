export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export HF_HOME="$HOME/goinfre/hf"
export UV_CACHE_DIR="$HOME/goinfre/uv_cache"
export MAIL="$(whoami)@student.1337.ma"

ZSH_THEME="fino"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  fzf-tab
  zsh-syntax-highlighting
  zsh-autosuggestions
  uv
  docker
  man
)


source $ZSH/oh-my-zsh.sh
source $ZSH/.aliases.zsh
