#!/bin/bash
docker build \
    --build-arg NPM_REG="$NPM_REG" \
    -t vertigo/loopback-base .
