cp ../code-server/*.deb ./
docker build -t code-server:ubuntu ./
rm ./*.deb