cp ../code-server/*.deb ./
docker build -t code-server:node ./
rm ./*.deb