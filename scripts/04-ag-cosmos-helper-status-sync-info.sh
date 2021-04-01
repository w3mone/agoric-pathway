#!/bin/bash

while sleep 5; do
 sync_info=`ag-cosmos-helper status -n tcp://localhost:<port>  | jq .sync_info`
  echo "$sync_info"
  if test `echo "$sync_info" | jq -r .catching_up` == false; then
    echo "Caught up"
    break
  fi
done