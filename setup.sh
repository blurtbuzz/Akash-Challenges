#!/bin/bash
export AKASH_NET="https://raw.githubusercontent.com/ovrclk/net/master/edgenet"
export AKASH_VERSION="$(curl -s "$AKASH_NET/version.txt")"
export AKASH_CHAIN_ID="$(curl -s "$AKASH_NET/chain-id.txt")"
export AKASH_NODE="tcp://rpc-edgenet.akashdev.net:26657"
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
