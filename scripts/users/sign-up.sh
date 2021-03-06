#!/bin/bash

API="${API_ORIGIN:-https://sweet-pea-farm.herokuapp.com}"
URL_PATH="/sign-up"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'",
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "is_admin": "'"${ADMIN}"'"
    }
  }'

echo
