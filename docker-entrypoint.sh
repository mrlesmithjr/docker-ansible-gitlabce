#!/bin/bash

exec supervisord -n

sleep 3 && gitlab-ctl reconfigure & /opt/gitlab/embedded/bin/runsvdir-start
