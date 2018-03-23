#!/bin/bash
docker run --rm -ti \
    -p 3000:3000 \
    -v $(pwd):/usr/app \
    vertigo/loopback-base bash
