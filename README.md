### How to Deploy

- [x] git clone
- [x] mvn clean package
- [x] cp target/ktoe-{ver}-SNAPSHOP.war docker
- [x] docker build -t ktoe-web .
- [x] docker tag ktoe-web {dockerId}/ktoe-web
- [x] docker push {dockerId}/ktoe-web
