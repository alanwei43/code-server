# code server with node:lts

带有 `node:lts` 运行环境的 code-server, 使用如下

```sh
# 显示帮助
docker run -it --rm alanway/code-server:node code-server --help

# code server 当前目录
docker run -d -p 3009:8080 -v $PWD:/app alanway/code-server:node code-server --bind-addr 0.0.0.0:8080 --auth none /app
# 或者使用aliyun镜像
docker run -d -p 3009:8080 -v $PWD:/app registry.cn-hangzhou.aliyuncs.com/alanwei/code-server:node code-server --bind-addr 0.0.0.0:8080 --auth none /app
# 然后访问 http://localhost:3009
```