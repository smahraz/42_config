alias nvimr="NVIM_APPNAME='rownvim' nvim"


goinfre_use() {
  CWD=$(pwd)
  cd ~/goinfre
  print -n "Your use: "
  du -h | tail -n 1|awk '{print $1}'
  df -h |grep "/goinfre" | awk '{print "Available: " $4}'

  cd $CWD
}

__norm (){
  CWD=$(pwd)

  while [[ ! -d ".git" ]]; do
    cd ..
    if [[ $(pwd) == / ]]; then
      echo "Can't find .git repo"
      break
    fi
  done
  norminette $(find . \( -name "*.c" -o -name "*.h" \) -and -type f -and ! -name "_*" )
  cd $CWD
}

