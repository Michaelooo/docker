#!/bin/sh


ENABLE_NODE_LOG=NO node /default.config.js

echo "current home is : $HOME"

if [ -f $HOME/agenthub-running.json ]; then
  cat $HOME/agenthub-running.json

  # exec
  ENABLE_NODE_LOG=NO agenthub $HOME/agenthub-running.json &
fi

exec "$@"