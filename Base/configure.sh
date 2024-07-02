#!/bin/sh

if [ -n "$1" ]; then
    cat >> conf/storm.yaml <<EOF
storm.zookeeper.servers:
- "$1"
EOF
fi

if [ -n "$2" ]; then
    cat >> conf/storm.yaml <<EOF
nimbus.seeds: ["$2"]
EOF
fi

cat >> conf/storm.yaml <<EOF
storm.log.dir: "/logs"
storm.local.dir: "/data"
nimbus.thrift.port: 6667

EOF


cat conf/storm.yaml
