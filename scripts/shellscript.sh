#!/bin/bash
echo "hello world"
docker run --rm -i hadolint/hadolint < ./Dockerfile
