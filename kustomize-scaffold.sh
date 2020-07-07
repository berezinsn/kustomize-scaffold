#!/bin/bash

set -xe

if [ -z $* ]; then
    echo "Please, pass the App name as a parameter"
    exit 1
fi

APP_NAME=$1
mkdir -p ${APP_NAME}/base ${APP_NAME}/envs
touch ${APP_NAME}/base/kustomize.yaml
ENVS=("dev" "qa")
for ENV in ${ENVS[*]}; do
    DEST=${APP_NAME}/envs/${ENV}
    mkdir -p ${DEST}
    touch ${DEST}/kustomize.yaml    
done
