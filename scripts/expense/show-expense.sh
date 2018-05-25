#!/bin/bash

curl "http://localhost:4741/expenses/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
