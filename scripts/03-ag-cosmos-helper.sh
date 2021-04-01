#!/bin/bash

ag-cosmos-helper status \
  -n tcp://127.0.0.1:<port> \
  2>&1 | jq .SyncInfo