FROM docker.elastic.co/kibana/kibana:6.2.4
RUN ./bin/kibana-plugin install https://github.com/sirensolutions/sentinl/releases/download/tag-6.2.3-3/sentinl-v6.2.4.zip
USER root
RUN yum install vim -y
