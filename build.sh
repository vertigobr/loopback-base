#!/bin/bash
docker build \
    --build-arg NPM_REG="--registry http://mta-mirror.vtg/artifactory/api/npm/npm-remote/" \
    -t vertigo/loopback-base .
