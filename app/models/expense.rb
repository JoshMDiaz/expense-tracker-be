class Expense < ApplicationRecord
  validates :name, presence: true
  validates :cost, presence: true
  validates :year, presence: true
end
