FROM logstash
COPY logstash.conf  logstash2.conf entrypoint.sh /config.dir/
WORKDIR /usr/share/logstash/bin
CMD ["/config.dir/entrypoint.sh","run"]
