# docker login --username=[email] registry.cn-hangzhou.aliyuncs.com
./build.sh
docker tag code-server:ubuntu registry.cn-hangzhou.aliyuncs.com/alanwei/code-server:ubuntu
docker push registry.cn-hangzhou.aliyuncs.com/alanwei/code-server:ubuntu