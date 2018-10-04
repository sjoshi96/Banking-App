class Branch < ApplicationRecord
  validates :branch_code, presence: true, length: {maximum: 5}
  validates :user_ID, presence: true,uniqueness: true, numericality:{only_integer: true}, length: {maximum: 5}
  has_many :users
  has_many :accounts
  belongs_to :bank
end