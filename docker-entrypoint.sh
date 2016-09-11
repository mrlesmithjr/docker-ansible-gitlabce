#!/bin/bash

service cron start
service rsyslog start
service ssh start
sleep 3 && gitlab-ctl reconfigure & /opt/gitlab/embedded/bin/runsvdir-start
