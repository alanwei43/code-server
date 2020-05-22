FROM ubuntu:20.04

EXPOSE 8080
COPY ./code-server_3.3.1_amd64.deb ./
RUN dpkg -i code-server_3.3.1_amd64.deb

CMD ["code-server"]