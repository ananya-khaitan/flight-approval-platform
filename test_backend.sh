#!/usr/bin/env bash
set -e

# 1. URL of your mock backend
URL="http://localhost:8080/flight-authorizations"

# 2. Sample payload (add any other fields your real spec needs)
PAYLOAD='{
  "flightId": "TEST123",
  "pilotName": "Jane Doe",
  "origin": "AAA",
  "destination": "BBB",
  "departureTime": "2025-06-28T10:00:00Z"
}'

echo "→ POST $URL"
# -s silent, -w prints HTTP status
response=$(curl -s -w "\nHTTP_STATUS:%{http_code}" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" \
  "$URL")

echo "$response"
