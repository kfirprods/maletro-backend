#! /bin/bash

gcloud functions \
  deploy "maletro-auth" \
  --source="./cloud-functions/auth" \
  --runtime=nodejs14 \
  --trigger-http \
  --allow-unauthenticated
