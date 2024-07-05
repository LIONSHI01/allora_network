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

# function main_menu(){
#   while true; do
#       clear
#       echo "1. Install Node"
#       echo "2. View Logs"
#       read -p "Please input (1-2): " OPTION

#       case $OPTION in
#           1) install_node ;;
#           2) inspect_logs ;;
#           *) echo "Invalid Choice." ;;
#       esac
#       echo "Press any key back to menu..."
#       read -n 1
#   done
# }

function main_menu() {
    while true; do
        clear
        echo "脚本由大赌社区candy编写，推特 @ccaannddyy11，免费开源，请勿相信收费"
        echo "特别鸣谢 @TestnetCn @y95277777 @EthExploring"
        echo "================================================================"
        echo "节点社区 Telegram 群组:https://t.me/niuwuriji"
        echo "节点社区 Telegram 频道:https://t.me/niuwuriji"
        echo "节点社区 Discord 社群:https://discord.gg/GbMV5EcNWF"
        echo "退出脚本，请按键盘ctrl c退出即可"
        echo "请选择要执行的操作:"
        echo "1. 安装节点"
        echo "2. 查看evmos状态"
        echo "3. 查看stationd状态"
        echo "4. 导出evm私钥和air助记词（第一行为evm私钥，第二行开始为air的助记词）"
        echo "5. 查看avail地址"
        echo "6. 删除节点"
        read -p "请输入选项（1-6）: " OPTION

        case $OPTION in
            1) install_node ;;
            2) inspect_logs ;;
            *) echo "无效选项。" ;;
        esac
        echo "按任意键返回主菜单..."
        read -n 1
    done
}

main_menu