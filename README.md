## Logstash

### Supported tags and respective Dockerfile links
* 5.2, 5.2.1, latest ([5.2/Dockerfile](https://github.com/stakater/dockerfile-logstash/blob/master/5.2/Dockerfile))
* 2.3.1 ([2.3.1/Dockerfile](https://github.com/stakater/dockerfile-logstash/blob/master/2.3.1/Dockerfile))

For more information Please look at the version specific README files with the dockerfiles.

## What is Logstash?

Logstash is a tool that can be used to collect, process and forward events and log messages. Collection is accomplished via number of configurable input plugins including raw socket/packet communication, file tailing and several message bus clients. Once an input plugin has collected data it can be processed by any number of filters which modify and annotate the event data. Finally events are routed to output plugins which can forward the events to a variety of external programs including Elasticsearch, local files and several message bus implementations.

wikitech.wikimedia.org/wiki/Logstash


inspired from: https://hub.docker.com/_/logstash/