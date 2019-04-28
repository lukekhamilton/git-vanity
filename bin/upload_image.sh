#!/usr/bin/env bash
aws --profile rnd ecr create-repository --repository-name git-vanity
$(aws --profile rnd ecr get-login --no-include-email --region ap-southeast-2)
docker tag git-vanity:latest 249425071280.dkr.ecr.ap-southeast-2.amazonaws.com/git-vanity:latest
docker push 249425071280.dkr.ecr.ap-southeast-2.amazonaws.com/git-vanity:latest
