#!/bin/sh
source .env
echo 'Updating Jest mocks...'

# Fetch config
config=$(curl -s "${REACT_APP_GATEWAY_URL}/v1/chains/")
# Pretty-print the JSON
node -p "JSON.stringify($config, null, 2)" > src/logic/safe/utils/mocks/remoteConfig.json