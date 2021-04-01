#!/bin/bash

ag-cosmos-helper query bank balances \
  `ag-cosmos-helper keys show -a <moniker>` \
  --node tcp://127.0.0.1:<port>