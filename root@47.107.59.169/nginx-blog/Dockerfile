FROM nginx

ENV HOME=/ \
  NGINXPATH=/etc/nginx/ \
  NGINXCUSTOMPATH=/etc/nginx/conf.d/
  
WORKDIR $HOME

# # 初始化脚本
COPY default.conf $NGINXCUSTOMPATH
COPY nginx.conf $NGINXPATH

# # 入口脚本
ENTRYPOINT ["nginx", "-t"]