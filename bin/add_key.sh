#!/usr/bin/env bash
KEY_NAME=$(basename $(pwd))
aws --profile rnd ssm put-parameter --name $KEY_NAME --type "SecureString" --value "$(cat $KEY_NAME)"

