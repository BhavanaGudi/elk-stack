#!/bin/bash
./logstash-plugin update logstash-input-beats
./bin/plugin install logstash-input-beats
./logstash -f /config.dir/logstash.conf
