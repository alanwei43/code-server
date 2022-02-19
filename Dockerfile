FROM ubuntu:18.04

EXPOSE 80
ENV PORT 80
ENV CODE_VERSION 3.3.1
WORKDIR /code-server
COPY ./config.yaml ./
ADD https://github.com/coder/code-server/releases/download/v${CODE_VERSION}/code-server_${CODE_VERSION}_amd64.deb ./
RUN dpkg -i code-server_${CODE_VERSION}_amd64.deb

ENTRYPOINT ["code-server"]
CMD ["--config", "/code-server/config.yaml", "/app"]