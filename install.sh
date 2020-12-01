#!/bin/bash
wget https://golang.org/dl/go1.15.5.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.15.5.linux-amd64.tar.gz
export AKASH_NET="https://raw.githubusercontent.com/ovrclk/net/master/edgenet"
export AKASH_VERSION="$(curl -s "$AKASH_NET/version.txt")"
export AKASH_CHAIN_ID="$(curl -s "$AKASH_NET/chain-id.txt")"
export AKASH_NODE="$(curl -s "$AKASH_NET/rpc-nodes.txt" | shuf -n 1)"
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
go get -d "github.com/ovrclk/akash"
cd $GOPATH/src/github.com/ovrclk/akash
git checkout "$AKASH_VERSION"
apt install make
apt-get install build-essential
make deps-install
make install
