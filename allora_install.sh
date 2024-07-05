#!/bin/bash

function install_node(){
    git clone https://github.com/allora-network/allora-chain.git
    cd allora-chain
    docker compose pull
    docker compose up -d
}


function inspect_logs(){
    cd allora-chain
    docker compose logs -f
}

function main_menu() {
  while true; do
      clear
      echo "1. Install Node"
      echo "2. View Logs"
      read -p "Please input (1-2): " OPTION

      case $OPTION in
          1) install_node ;;
          2) inspect_logs ;;
          *) echo "Invalid Choice." ;;
      esac
      echo "Press any key back to menu..."
      read -n 1
  done
}

# function main_menu() {
#   while true; do
#       clear
#       read -p "请输入选项（1-6）: " OPTION

#       case $OPTION in
#           1) install_node ;;
#           2) inspect_logs ;;
#           *) echo "无效选项。" ;;
#       esac
#       echo "按任意键返回主菜单..."
#       read -n 1
#   done
# }

main_menu