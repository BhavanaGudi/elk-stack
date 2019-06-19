apk add git
git clone https://github.com/BhavanaGudi/elk-stack.git
cd /root/elk-stack/elk-docker
docker build -t tomcat_local tomcat/. & docker build -t logstash_local logstash/. & docker build -t kibana_local kibana/. & docker build -t nginx_local nginx/.
docker network create mynet
docker-compose up -d
