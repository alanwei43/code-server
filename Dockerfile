FROM ubuntu:18.04

EXPOSE 80
ENV PORT 80
WORKDIR /code-server
ADD https://github.com/coder/code-server/releases/download/v3.12.0/code-server_3.12.0_amd64.deb ./
RUN dpkg -i code-server_3.12.0_amd64.deb

CMD ["code-server"]