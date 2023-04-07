TAG=$1

docker build -t code-server:$TAG --file Dockerfile.aliyun ./ && \
docker tag "code-server:$TAG" "registry.cn-hangzhou.aliyuncs.com/alanwei/code-server:$TAG" && \
docker push "registry.cn-hangzhou.aliyuncs.com/alanwei/code-server:$TAG"