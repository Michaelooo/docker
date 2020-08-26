FROM nginx

ENV HOME=/ \
  NGINXPATH=/etc/nginx/ \
  NGINXCUSTOMPATH=/etc/nginx/conf.d/
  
WORKDIR $HOME

# # 初始化脚本
COPY default.conf $NGINXCUSTOMPATH
COPY nginx.conf $NGINXPATH

HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1

# # 入口脚本
# ENTRYPOINT ["nginx", "-t"]