#!/bin/bash

# 镜像名称
IMAGE_NAME="sealingp/laos"

# 构建 Docker 镜像
docker build -t $IMAGE_NAME .

# 登录 Docker Hub
docker login

# 推送镜像到 Docker Hub
docker push $IMAGE_NAME

# 验证镜像
docker pull $IMAGE_NAME
docker run -it $IMAGE_NAME /bin/sh
