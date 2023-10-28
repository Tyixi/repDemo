#!/bin/bash
echo "FROM node:14" > Dockerfile
echo "COPY . /app" >> Dockerfile
echo "WORKDIR /app" >> Dockerfile
echo "RUN npm install --registry=https://registry.npm.taobao.org" >> Dockerfile
echo "EXPOSE 3000" >> Dockerfile
echo 'CMD ["node", "hello.js"]' >> Dockerfile

#构建镜像
docker build -t hello-world .
#运行容器
docker run hello-world
