#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/quote_requests"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "fields": {
      "email": "'"${EMAIL}"'",
      "phone": "'"${PHONE}"'",
      "event_type": "'"${TYPE}"'",
      "event_date": "'"${DATE}"'",
      "color_scheme": "'"${COLOR}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
