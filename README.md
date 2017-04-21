```sh
git clone https://github.com/debianmaster/docker-nodejs-s2i-example.git
cd docker-nodejs-s2i-example
docker build -t "nodejs-builder" .
s2i build https://github.com/debianmaster/nodejs-welcome.git nodejs-builder my-nodejs-app
```
