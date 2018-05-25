# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :budgets
  has_many :expenses, :through => :budgets
end
