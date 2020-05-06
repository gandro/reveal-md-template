#!/bin/bash
BASEDIR=$(cd `dirname $0` && pwd)
PORT=8080
IMAGE=webpronl/reveal-md:latest

docker run --rm -p "${PORT}:${PORT}" \
    -v "${BASEDIR}/slides:/slides" \
    -v "${BASEDIR}/reveal-md.json:/app/reveal-md.json" \
    -v "${BASEDIR}/reveal.json:/app/reveal.json" \
    -v "${BASEDIR}/css:/app/css" \
    -v "${BASEDIR}/listing:/app/listing" \
    ${IMAGE} --port "$PORT" /slides
