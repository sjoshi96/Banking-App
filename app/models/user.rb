class User < ApplicationRecord
  validates :branch_code, presence: true, length: {maximum: 5}
  validates :user_ID, presence: true, uniqueness: true, numericality:{only_integer: true}, length: {maximum: 5}
  validates :password, presence: true
  validates :loan_no, presence: true, numericality:{only_integer: true}, length: {maximum: 10}
  has_many :loans
  has_many :accounts
  belongs_to :branch
end