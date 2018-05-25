class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :income, :month_budget, :start_date
  has_one :user
end
