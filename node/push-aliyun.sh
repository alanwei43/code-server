# docker login --username=[email] registry.cn-hangzhou.aliyuncs.com
./build.sh
docker tag code-server:node registry.cn-hangzhou.aliyuncs.com/alanwei/code-server:node
docker push registry.cn-hangzhou.aliyuncs.com/alanwei/code-server:node