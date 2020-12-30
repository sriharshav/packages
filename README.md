# packages

## Add key and source package list ##

    curl -s --compressed "https://sriharshav.github.io/packages/KEY.gpg" | sudo apt-key add -

    sudo curl -s --compressed -o /etc/apt/sources.list.d/sriharshas_packages.list "https://sriharshav.github.io/packages/sriharshas_packages.list"

## Installation ##

sudo apt update

sudo apt install <pacakge>

## Setup ##

### 1. Creating a GPG key ###

    sudo apt install gnupg
    gpg --full-gen-key

    Note: Select RSA with 4096 bits


### Key Management ###

__Export and Import private key__

    gpg --export-secret-keys "sriharsha.vardhan[at]gmaill[.]com" > sriharshas-private-key.asc
    gpg --import sriharshas-private-key.asc

__Create public key__

    gpg --armor --export ""sriharsha.vardhan[at]gmaill[.]com"" > ./pkg/srv/KEY.gpg