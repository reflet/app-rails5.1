#!/bin/bash

if [[ -f /usr/local/src/tmp/pids/server.pid ]]; then
  rm -f /usr/local/src/tmp/pids/server.pid
fi

bundle exec rake db:create && \
bundle exec rake db:migrate

rails server -b '0.0.0.0'
