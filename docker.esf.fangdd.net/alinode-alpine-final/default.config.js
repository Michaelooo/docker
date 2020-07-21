'use strict';

const fs = require('fs');

const defaults = {
  "server": "wss://agentserver.node.aliyun.com:8080",
  "heartbeatInterval": 60,
  "reconnectDelay": 10,
  "reportInterval": 60,
  "logdir": "/tmp/",
  "error_log": [
    `${process.env.HOME}/.logs/error.#YYYY#-#MM#-#DD#-#HH#.log`
  ],
  "packages": [
    `${process.env.HOME}/package.json`
  ]
};

var custom = {};

if (fs.existsSync(`${process.env.HOME}/alinode.config.json`)) {
  custom = require(`${process.env.HOME}/alinode.config.json`);
}

const config = Object.assign(defaults, custom);

config.appid = config.appid || process.env.APP_ID;
config.secret = config.secret || process.env.APP_SECRET;
config.logdir = config.logdir || process.env.NODE_LOG_DIR || '/tmp';

if (config.appid && config.secret) {
  const runningCfg = `${process.env.HOME}/agenthub-running.json`;
  fs.writeFileSync(runningCfg, JSON.stringify(config, null, 2));
}