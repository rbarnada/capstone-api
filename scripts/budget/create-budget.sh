#!/bin/bash

curl "http://localhost:4741/budgets/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "budget": {
      "income": "'"${INCOME}"'",
      "month_budget": "'"${BUDGET}"'",
      "start_date": "'"${DATE}"'"
    }
  }'

echo
