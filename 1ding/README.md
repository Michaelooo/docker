
1. 1ding 容器化
2. 
```
docker run -it -d  -v /data0/www:/data0/www  -p 80:80 -p 443:443 --name nginx-1ding  nginx-1ding:1.0
```