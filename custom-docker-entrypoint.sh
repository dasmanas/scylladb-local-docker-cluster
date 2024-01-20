#!/bin/sh
sysctl -p
/docker-entrypoint.py "$@"