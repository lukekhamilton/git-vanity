#!/usr/bin/env bash
KEY_NAME=$(basename $(pwd))
ssh-keygen -t rsa -N "" -b 4096 -C "codebuild@mettadata.com" -f $KEY_NAME

