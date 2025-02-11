#!/bin/bash

set -xe

docker buildx build --platform linux/amd64 -t vidog/kubectl-envsubst:0.2 .

docker push vidog/kubectl-envsubst:0.2

docker buildx build --platform linux/amd64 -t vidog/kubectl-envsubst:latest .

docker push vidog/kubectl-envsubst:latest

