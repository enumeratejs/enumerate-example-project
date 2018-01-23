#!/usr/bin/env bash

rm -rf ./dist/
mkdir -p ./dist/

rm -rf ./tmp/
mkdir -p ./tmp/

# Build web identities file
enumerate filter identities.yaml web-identities-query.yaml > ./tmp/web-identities.yaml
enumerate merge ./tmp/web-identities.yaml web-identities-extras.yaml > ./dist/web-identities.yaml

# Build mobile identities file
enumerate filter identities.yaml mobile-identities-query.yaml > ./tmp/mobile-identities.yaml
enumerate merge ./tmp/mobile-identities.yaml mobile-identities-extras.yaml > ./dist/mobile-identities.yaml

rm -rf ./tmp/