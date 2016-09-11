#!/bin/bash

sleep 3 && gitlab-ctl reconfigure & /opt/gitlab/embedded/bin/runsvdir-start

exec supervisord -n
