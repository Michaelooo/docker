FROM docker.esf.fangdd.net/fdd-node:12

# 环境变量
ENV ALINODE_VERSION=4.7.2 \
    NODE_VERSION=10.15.3 \
    ENABLE_NODE_LOG=YES \
    NODE_LOG_DIR=/tmp \
    ALINODE_CONFIG=alinode.config.json \
    NODE_ENV=production \
    HOME=/root \
    APP_DIR=/app

# 从官网镜像中复制 alinode 包含了 agenthub 无需安装 https://help.aliyun.com/document_detail/65376.html
COPY --from=registry.cn-hangzhou.aliyuncs.com/aliyun-node/alinode:4.7.2-alpine /usr/local /usr/local

# 添加账号，安装 依赖，运维工具，pm2
# RUN rm -rf /usr/local/bin/yarn* \
#   && ENABLE_NODE_LOG=NO npm set registry https://registry.npm.taobao.org \
#   && ENABLE_NODE_LOG=NO npm set disturl https://npm.taobao.org/dist \
#   && ENABLE_NODE_LOG=NO npm i -g yarn pm2 \
#   && ENABLE_NODE_LOG=NO npm cache clean --force \
#   && rm -rf /tmp/*

# # 初始化脚本
COPY default.config.js /
COPY start-agenthub.sh /

RUN chown -R root:root start-agenthub.sh \
  && chmod +x start-agenthub.sh

# # 入口脚本
ENTRYPOINT ["/start-agenthub.sh"]