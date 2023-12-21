# rqbit alpine docker container 
* `git clone https://github.com/nwgat/rqbit-docker.git && cd rqbit-docker
* `sudo docker build -t rqbit .`
* `sudo docker run -it -d -p 127.0.0.1:3030:3030 -v $HOME/dl:/dl --name rqbit --restart unless-stopped  rqbit:latest` (localhost only)
* `sudo docker run -it -d -p 3030:3030 -v $HOME/dl:/dl --name rqbit --restart unless-stopped  rqbit:latest ` (works on local network, not for wan!)
* `sudo docker start rqbit`
* `sudo docker exec -it rqbit /rqbit/release/rqbit -V` (check version)
* `sudo docker logs rqbit` (to display log)
