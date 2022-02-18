# code-server 镜像

## 简介

本仓库基于[code-server](https://github.com/coder/code-server)制作的对应的Docker镜像, 支持的版本列表即是分支列表.

镜像地址: [alanway/code-server](https://hub.docker.com/alanway/code-server)


## 使用示例

**查看帮助**

```bash
docker run -it --rm alanway/code-server:3.9.3 code-server --help
```

**运行**

```bash
docker run -d -p 8080:80 -v $PWD:/app code-server /app
```