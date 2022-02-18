# code-server 镜像

![aliyun](https://github.com/alanwei43/code-server/actions/workflows/aliyun.yml/badge.svg)
![github](https://github.com/alanwei43/code-server/actions/workflows/github.yml/badge.svg)
![docker-hub](https://github.com/alanwei43/code-server/actions/workflows/docker-hub.yml/badge.svg)

## 简介

本仓库基于[code-server](https://github.com/coder/code-server)制作的对应的Docker镜像, 支持的版本列表即是分支列表.

镜像地址: [alanway/code-server](https://hub.docker.com/alanway/code-server)


## 使用示例

**查看帮助**

```bash
docker run -it --rm alanway/code-server code-server --help
```

**运行**

```bash
docker run -d -p 8080:80 -v $PWD:/app code-server /app
```

## 关于 GitHub Action

配置直接参考 `.github` 目录下的配置即可, 需要注意的是需要在仓库设置里增加以下 **Secrets**:

* **ALIYUN_EMAIL** 发布阿里云仓库的所需的阿里云账号的登陆email账号(比如 `xxx@163.com`)
* **ALIYUN_USERNAME** 发布阿里云仓库的所需的阿里云账号的账号Id (假如你的阿里云镜像id是 `registry.cn-hangzhou.aliyuncs.com/alanwei/code-server:latest`, 那这个值就配置成 `alanwei`)
* **ALIYUN_PASSWORD** 发布阿里云仓库的所需的阿里云账号的密码 
* **DOCKER_HUB_PASSWORD** 发布Docker Hub所需的token