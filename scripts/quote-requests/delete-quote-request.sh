#!/bin/bash

API="${API_ORIGIN:-https://sweet-pea-farm.herokuapp.com}"
URL_PATH="/quote_requests"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
