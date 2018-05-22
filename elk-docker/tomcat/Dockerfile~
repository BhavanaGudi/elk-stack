FROM tomcat
RUN apt-get update && apt-get install wget -y && apt-get install apt-transport-https -y
RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-6.x.list
RUN  apt-get update && apt-get install filebeat
RUN update-rc.d filebeat defaults 95 10
ADD filebeat.yml /etc/filebeat/filebeat.yml

RUN service filebeat start
WORKDIR /usr/local/tomcat/bin
CMD ["catalina.sh","run"]
