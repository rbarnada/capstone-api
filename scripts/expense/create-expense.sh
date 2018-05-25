#!/bin/bash

curl "http://localhost:4741/expenses/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "expense": {
      "cost": "'"${COST}"'",
      "date": "'"${DATE}"'",
      "expense_category": "'"${CATEGORY}"'",
      "budget_id": "'"${BUDGET}"'"
    }
  }'

echo
