class Loan < ApplicationRecord
  validates :account_type, presence: true, length: {maximum: 8}
  validates :loan_no, presence: true, uniqueness: true, numericality:{only_integer: true}, length: {maximum: 10}
  has_many :transaction_ID
  belongs_to :branch
  belongs_to :user
end