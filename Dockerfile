FROM ubuntu:18.04

EXPOSE 80
ENV PORT 80
WORKDIR /code-server
ADD https://github.com/coder/code-server/releases/download/v3.9.3/code-server_3.9.3_amd64.deb ./
RUN dpkg -i code-server_3.9.3_amd64.deb

CMD ["code-server"]