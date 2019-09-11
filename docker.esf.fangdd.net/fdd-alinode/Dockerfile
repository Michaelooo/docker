FROM docker.esf.fangdd.net/fdd-node:12

# https://github.com/aliyun-node/tnvm/issues/25
ENV PATH /root/.tnvm/tnvm.sh/versions/alinode/v$ALINODE_VERSION/bin:$PATH
RUN echo "$TNVM_DIR/versions/alinode/v$ALINODE_VERSION/bin:$PATH"

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# 建立 bashrc 文件
RUN touch ~/.bashrc

# 验证是否正确安装了 node 和 agenthub
COPY ./validate.sh /usr/bin/validate.sh

# 安装版本管理工具 tnvm，安装过程出错参考：https://github.com/aliyun-node/tnvm
RUN wget -O- https://raw.githubusercontent.com/aliyun-node/tnvm/master/install.sh | bash
RUN . "$HOME/.bashrc"

# tnvm ls-remote alinode 查看需要的版本,参考： https://help.aliyun.com/document_detail/60811.html?spm=a2c4g.11186623.2.18.780b2e7fYoDfiD
RUN . "$HOME/.tnvm/tnvm.sh" && \
  tnvm install alinode-v5.6.0 && \
  tnvm use alinode-v5.6.0 && \
  npm install @alicloud/agenthub -g && \
  chmod +x /usr/bin/validate.sh && \
  . "/usr/bin/validate.sh"





