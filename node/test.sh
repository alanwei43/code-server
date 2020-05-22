# docker run -it --rm code-server:node bash
docker stop code-server-node 
docker rm code-server-node 
docker run -d -P --name code-server-node -v $PWD:/app code-server:node code-server --bind-addr 0.0.0.0:8080 --auth none /app