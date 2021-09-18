#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

gcloud functions \
  deploy "maletro-auth" \
  --source="${DIR}/cloud-functions/auth" \
  --runtime=nodejs14 \
  --trigger-http \
  --allow-unauthenticated
