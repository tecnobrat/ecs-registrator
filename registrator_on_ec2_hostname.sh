#!/bin/sh
export LOCAL_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
export HOST=$(curl -s 169.254.169.254/latest/meta-data/local-hostname)
echo "Running: registrator -ip $LOCAL_IP -h $HOST $@"
exec registrator -ip $LOCAL_IP -h $HOST "$@"
