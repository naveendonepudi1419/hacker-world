#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo""
echo -e "${GREEN}   "
echo " _   _    _    ____ _  _______ ____   __        _____  ____  _     ____   "
echo "| | | |  / \  / ___| |/ / ____|  _ \  \ \      / / _ \|  _ \| |   |  _ \  "
echo "| |_| | / _ \| |   | ' /|  _| | |_) |  \ \ /\ / / | | | |_) | |   | | | | "
echo "|  _  |/ ___ \ |___| . \| |___|  _ <    \ V  V /| |_| |  _ <| |___| |_| | "
echo "|_| |_/_/   \_\____|_|\_\_____|_| \_\    \_/\_/  \___/|_| \_\_____|____/  "
echo "                                                                          "


echo -e "${RED}                                                      ~ Tools for Hacking by D.Naveen ${NC}"
echo ""
echo -e "${YELLOW} Twitter.com/naveendonepudi1419 | Instagram.com/naveendonepudi1419 | Github.com/naveendonepudi1419 ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install hackerworld, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/hacker-world"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/hacker-world"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory hackerworld Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/naveendonepudi1419/hacker-world.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/hackerworld.py" '${1+"$@"}' > hackerworld;
chmod +x hackerworld;
sudo cp hackerworld /usr/bin/;
rm hackerworld;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by typing hackerworld !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi
