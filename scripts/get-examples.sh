#!/bin/bash

API="${API_ORIGIN:-https://sweet-pea-farm.herokuapp.com}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
