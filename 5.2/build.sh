#!/bin/bash
_logstash_version=$1
_logstash_tag=$2
_release_build=false

if [ -z "${_logstash_version}" ]; then
	source LOGSTASH_VERSION
	_logstash_version=$LOGSTASH_VERSION
	_logstash_tag=$LOGSTASH_VERSION
	_release_build=true
fi

echo "LOGSTASH_VERSION: ${_logstash_version}"
echo "DOCKER TAG: ${_logstash_tag}"
echo "RELEASE BUILD: ${_release_build}"

docker build --build-arg LOGSTASH_VERSION=${_logstash_version} --tag "stakater/logstash:${_logstash_tag}"  --no-cache=true .

if [ $_release_build == true ]; then
	docker tag "stakater/logstash:${_logstash_tag}" "stakater/logstash:latest"
fi