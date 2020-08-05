# 生成前端资源镜像、启动容器
#!/bin/bash
author='michael'

echo '=========================='
if [ -n $1 && $1 != '' ]; then
  echo "1: 构建镜像，镜像标签： $1"
  docker build -t $1 .

  echo '2： 启动容器'
  cd $blogPath
  docker run -it -d -v /data0/www:/data0/www -p 80:80 -p 443:443 --name nginx-1ding $1
  echo '成功'
else
  echo '请输入容器名,如：ngnix-1ding:0804'
  exit 1
fi
