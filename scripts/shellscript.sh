#!/bin/bash
echo "hello world"
docker run --rm -i hadolint/hadolint < /home/ec2-user/traildev/Dockerfile
