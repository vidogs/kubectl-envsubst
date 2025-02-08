#!/bin/bash

set -xe

docker build -t vidog/kubectl-envsubst:0.1 .

docker push vidog/kubectl-envsubst:0.1

docker build -t vidog/kubectl-envsubst:latest .

docker push vidog/kubectl-envsubst:latest

