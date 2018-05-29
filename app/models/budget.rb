class Budget < ApplicationRecord
  belongs_to :user
  has_many :expenses
  validates_uniqueness_of :start_date, scope: :user_id
end
