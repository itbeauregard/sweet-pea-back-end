#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/registrations"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "fields": {
      "email": "'"${EMAIL}"'",
      "phone": "'"${PHONE}"'",
      "veg_csa": "'"${VEG}"'",
      "flower_csa": "'"${FLOWER}"'",
      "location": "'"${LOCATION}"'",
      "user_id": "'"${USERID}"'"
    }
  }'

echo
