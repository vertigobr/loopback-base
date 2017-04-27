#!/bin/bash
docker run --rm -ti \
    -p 3000:3000 \
    -v $(pwd)/src:/usr/src \
    -e npm_config_bin_links=false \
    vertigo/loopback-base bash
