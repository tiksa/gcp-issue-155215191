#!/bin/bash

set -x

gcloud functions deploy simple-gcf \
  --entry-point entry_fn \
  --memory 256MB \
  --runtime python37 \
  --trigger-topic simple-gcf-trigger \
  --region europe-west1

sleep 2

gcloud pubsub topics publish simple-gcf-trigger --attribute=foo=bar
