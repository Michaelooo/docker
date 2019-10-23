#!/bin/sh

echo '当前环境是:'$NODE_ENV
node /default.config.js

if [[ -f $HOME/agenthub-running.json && $NODE_ENV = production ]]
then
  ENABLE_NODE_LOG=YES agenthub $HOME/agenthub-running.json 
else
  echo '[注意]：只有在生产环境才会开启 alinode '
fi

exec "$@"