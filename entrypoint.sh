#!/bin/sh

if [[ -z "$AWS_ACCESS_KEY_ID" || -z "$AWS_SECRET_ACCESS_KEY" ]]; then
  if aws sts get-caller-identity ; then
    echo "already logged in..."
  else
    aws configure || exit 1;
  fi
fi

runiac
