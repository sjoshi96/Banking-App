class Bank < ApplicationRecord
  validates :branch_code, presence: true, length: {maximum: 5}
  has_many :branches
end