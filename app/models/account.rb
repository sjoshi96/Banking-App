class Account < ApplicationRecord
  validates :account_type, presence: true, length: {maximum: 8}
  validates :loan_type, presence: true, length: {maximum: 8}
  validates :loan_no, presence: true, uniqueness: true, numericality:{only_integer: true}, length: {maximum: 10}
  has_many :loans
  belongs_to :branch
  belongs_to :user


  

end