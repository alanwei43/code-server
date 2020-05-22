# docker run -it --rm code-server:node bash
docker run -d -p 3009:3001 -v $PWD:/data code-server:node code-server --bind-addr 0.0.0.0:3001 --auth none /data