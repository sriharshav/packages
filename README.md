# packages

## Add key and source package list ##
curl -s --compressed "https://sriharshav.github.io/packages/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/sriharshas_packages.list "https://sriharshav.github.io/packages/sriharshas_packages.list"

## Installation ##

sudo apt update

sudo apt install <pacakge>