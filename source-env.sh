#!/bin/bash
# this is meant ot be sourced.
# . source_env.sh .some_env
# Default is .env
# Don't do this from your own shell. It is meant to be run by inner shell, like ssh
# or an interactive wrapping shell manually launched by you.

env_file=${1:-.env}

while read -r ln; do
    [[ -z "$ln" || "$ln" == \#* ]] || export $ln
done < $env_file
