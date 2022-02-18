FROM ubuntu:18.04

EXPOSE 80
ENV PORT 80
WORKDIR /code-server
ADD https://github.com/coder/code-server/releases/download/v4.0.2/code-server_4.0.2_amd64.deb ./
RUN dpkg -i code-server_4.0.2_amd64.deb

CMD ["code-server"]