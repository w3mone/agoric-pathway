#!/bin/bash

ag-cosmos-helper tx staking edit-validator \
  --amount=50000000uagstake \
  --broadcast-mode=block \
  --pubkey=$(ag-chain-cosmos tendermint show-validator) \
  --moniker="<moniker>" \
  --identity="<keybase>" \
  --details="<details>" \
  --commission-rate="0.1" \
  --commission-max-rate="0.1" \
  --commission-max-change-rate="0.1" \
  --min-self-delegation="1" \
  --from="<moniker>" \
  --chain-id=$chainName \
  --gas=auto \
  --gas-adjustment=1.4 \
  --node tcp://127.0.0.1:<port>