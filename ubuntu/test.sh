# docker run -it --rm code-server:ubuntu bash
docker stop code-server-ubuntu 
docker rm code-server-ubuntu 
docker run -d -P --name code-server-ubuntu -v $PWD:/app code-server:ubuntu code-server --bind-addr 0.0.0.0:8080 --auth none /app