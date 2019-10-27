
1. 个人博客启动的例子
2. 
```
docker run -it -d  -v /var/www:/var/www  -p 80:80 -p 443:443 --name blog  nginx-blog:1.0
```