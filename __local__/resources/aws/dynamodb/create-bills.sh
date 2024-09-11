#!/bin/bash

ENDPOINT_URL="http://localhost:4566"

aws dynamodb create-table \
    --table-name Bills \
    --attribute-definitions AttributeName=id,AttributeType=S \
    --key-schema AttributeName=id,KeyType=HASH \
    --billing-mode PAY_PER_REQUEST \
    --endpoint-url $ENDPOINT_URL \
    --region us-east-1 \
    --output json