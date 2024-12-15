# code-server 镜像

![aliyun](https://github.com/alanwei43/code-server/actions/workflows/aliyun.yml/badge.svg)
![github](https://github.com/alanwei43/code-server/actions/workflows/github.yml/badge.svg)
![docker-hub](https://github.com/alanwei43/code-server/actions/workflows/docker-hub.yml/badge.svg)

本项目会自动推送镜像到三个仓库:
* 官方仓库: `alanway/code-server`
* GitHub仓库: `ghcr.io/alanwei43/code-server/code-server:4.95.3`
* 阿里云仓库: `registry.cn-hangzhou.aliyuncs.com/alanwei/code-server`

支持的tag参考项目的分支列表

## 简介

本仓库基于[code-server](https://github.com/coder/code-server)制作的对应的Docker镜像, 支持的版本列表即是分支列表.

镜像地址: [alanway/code-server](https://hub.docker.com/r/alanway/code-server/tags). (其中的 *ubuntu*, *node*, *jdk*标签已经废弃不在维护使用.)


## 使用示例

**查看帮助**

```bash
docker run -it --rm alanway/code-server --help
```

**运行**

```bash
docker run -v $PWD:/app -P alanway/code-server # 运行一个容器实例

# 国内用户可使用阿里云镜像
docker run -v $PWD:/app -P registry.cn-hangzhou.aliyuncs.com/alanwei/code-server # 运行一个容器实例

# 启动 code server, 并把当前目录设为工作目录
docker run --name code-server \ # 设置一个名称
  --restart=always \ # 设置容器总是重启
  -d \ # 后台运行
  -P \ # 随机分配一个端口号
  -v $PWD:/app \ # 把当前目录映射到容器内的 /app 目录
  alanway/code-server

# 启动 code server, 把当前目录设为工作目录, 并且设置密码认证
docker run --name code-server \
  --restart=always \
  -d \
  -p 8089:80 \ # 设置code server在主机监听的端口号为 8089
  -v $PWD:/app \ # 把当前目录映射到容器内的目录
  -e PASSWORD='ps123' \ # 设置密码
  code-server --bind-addr 0.0.0.0:80 --auth password /app # 这里设置密码认证, 以及 code server 打开的目录, 注意这里要监听 0.0.0.0:80, 如果仅监听(默认行为) 127.0.0.1:80, 物理机可能无法访问.
```

## 关于 GitHub Action

配置直接参考 `.github` 目录下的配置即可, 需要注意的是需要在仓库设置里增加以下 **Secrets**:

* **ALIYUN_EMAIL** 发布阿里云仓库的所需的阿里云账号的登陆email账号(比如 `xxx@163.com`)
* **ALIYUN_USERNAME** 发布阿里云仓库的所需的阿里云账号的账号Id (假如你的阿里云镜像id是 `registry.cn-hangzhou.aliyuncs.com/alanwei/code-server:latest`, 那这个值就配置成 `alanwei`)
* **ALIYUN_PASSWORD** 发布阿里云仓库的所需的阿里云账号的密码 
* **DOCKER_HUB_PASSWORD** 发布 Docker Hub 所需的token

## 新版本发布

> 假设 `code-server` 最新分支为 `4.9.1`

1. 切换到 `master` 分支
1. 修改文件 `Dockerfile` 里的 `ENV CODE_VERSION 4.9.1` 中的版本号
1. 推送到远程`master`
1. 从 `master` 切换分支 `v4.9.1` 然后推送到远程