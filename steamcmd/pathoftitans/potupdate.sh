#!/bin/sh

export DOTNET_BUNDLE_EXTRACT_BASE_DIR=./temp/

# Update the Container Installation
./AlderonGamesCmd --game path-of-titans --server true --beta-branch $BETA_BRANCH --install-dir ./ --username $AG_SERVER_EMAIL --password $AG_SERVER_PASS

chmod a+x ./PathOfTitansServer.sh

./PathOfTitansServer.sh "$@"