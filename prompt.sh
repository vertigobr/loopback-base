#!/bin/bash
docker run --rm -ti \
    -p 3000:3000 \
    -v $(pwd)/src:/usr/src \
    vertigo/loopback-base bash
