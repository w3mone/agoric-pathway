#!/bin/bash

# Set the chainName value again
chainName=`curl https://testnet.agoric.com/network-config | jq -r .chainName`
# Confirm value: should be something like testnet-1.17.0
echo $chainName
# Replace <key_name> with the key you created previously
ag-cosmos-helper tx slashing unjail \
  --node tcp://localhost:<port> \
  --broadcast-mode=block \
  --from=<moniker> \
  --chain-id=$chainName \
  --gas=auto \
  --gas-adjustment=1.4