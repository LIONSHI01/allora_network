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

function main_menu(){
  while true; do
      clear
      echo "1. Install Node"
      echo "2. View Logs"

      case $OPTION in
          1) install_node ;;
          2) inspect_logs
      esac
      echo "Press any key back to menu..."
      read -n 1
  done
}

main_menu