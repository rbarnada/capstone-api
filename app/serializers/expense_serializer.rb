class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :date, :cost, :expense_category
  has_one :budget
end
