#!/usr/bin/env bash

cat ascii.txt 
echo -e "\nMade by TheDevilMan\n"
sudo apt update 
sudo apt install -y build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev python3-dev python3-venv wget
# Download and install Python 3.9
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tar.xz

tar -xf Python-3.9.0.tar.xz
cd Python-3.9.0
./configure --enable-optimizations
make -j $(nproc)
sudo make altinstall

cd ~/Documents 
mkdir Dev && cd Dev 
python3.9 -m venv .venv
source .venv/bin/activate
pip install tensorflow keras numpy pandas matplotlib scikit-learn seaborn jupyterlab
echo -e "\nPython 3.9 and required packages installed successfully!\n"

clear 
# For verification
python3.9 --version
deactivate 

cd ~/Desktop
cat > Pylinux.txt <<EOF
Your development folder has already been made in:
~/Documents/Dev

To activate the environment:
$ source .venv/bin/activate 
[ While being in the Dev folder directory ]

To quit 
$ deactivate 
EOF

