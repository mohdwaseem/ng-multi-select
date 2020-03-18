#!/bin/bash
BASE_DIR=./integration/node_modules
yarn clean
yarn build
mkdir -p $BASE_DIR
mkdir -p ${BASE_DIR}/@ng-multi-select
mkdir -p ${BASE_DIR}/@ng-multi-select/ng-multi-select
cp -R ./dist/* ${BASE_DIR}/@ng-multi-select/ng-multi-select
cd ./integration
yarn install
yarn build
yarn e2e
yarn e2e:server
