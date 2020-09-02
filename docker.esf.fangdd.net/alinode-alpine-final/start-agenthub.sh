#!/bin/bash

echo '当前环境是:'"$NODE_ENV"
echo '$HOME是:'"$HOME"
echo '$DEBUG_ALINODE 是:'"$DEBUG_ALINODE"

node /default.config.js

if [[ -f $HOME/agenthub-running.json && $NODE_ENV = production ]]
then
  echo '正在启动 agenthub'
  ENABLE_NODE_LOG=YES agenthub "$HOME"/agenthub-running.json 
else
  echo '!!!注意：只有在生产环境才会开启 alinode '
fi

if [[ -f $HOME/agenthub-running.json && $DEBUG_ALINODE = 1 ]]
then
  echo '设置 DEBUG_ALINODE=1, 可以在任意环境启动 agenthub'
  ENABLE_NODE_LOG=YES agenthub "$HOME"/agenthub-running.json 
fi

exec "$@"