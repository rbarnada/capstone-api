#!/bin/bash

curl "http://localhost:4741/budgets" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
a
echo
