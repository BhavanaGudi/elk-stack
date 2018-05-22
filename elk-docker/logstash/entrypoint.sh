#!/bin/bash
./logstash-plugin update logstash-input-beats
./logstash -f logstash.conf
