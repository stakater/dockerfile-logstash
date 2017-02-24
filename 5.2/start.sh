#!/bin/bash
set -e

# Convert COMMAND variable into an array 
# Simulating positional parameter behaviour 
IFS=' ' read -r -a CMD_ARRAY <<< "$COMMAND"

# explicitly setting positional parameters ($@) to CMD_ARRAY
# Add logstash as command if needed i.e. when 
# first arg is `-f` or `--some-option` 
if [ "${CMD_ARRAY[0]:0:1}" = '-' ]; then
	set -- logstash "${CMD_ARRAY[@]}"
else
	set -- "${CMD_ARRAY[@]}"
fi

# Drop root privileges if we are running logstash
# allow the container to be started with `--user`
if [ "$1" = 'logstash' -a "$(id -u)" = '0' ];
then
	set -- su-exec stakater "$@";
fi

exec "$@"