#!/bin/bash

# Define the endpoint URL to LocalStack
ENDPOINT_URL="http://localhost:4566"

# Create the DynamoDB table
aws dynamodb create-table \
    --table-name Bills \
    --attribute-definitions AttributeName=id,AttributeType=S \
    --key-schema AttributeName=id,KeyType=HASH \
    --billing-mode PAY_PER_REQUEST \
    --endpoint-url $ENDPOINT_URL \
    --region us-east-1 \
    --output json \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5