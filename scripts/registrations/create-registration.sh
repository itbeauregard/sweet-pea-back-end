#!/bin/bash

API="${API_ORIGIN:-https://sweet-pea-farm.herokuapp.com}"
URL_PATH="/registrations"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
