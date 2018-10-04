class Transaction < ApplicationRecord
  validates :transaction_ID, presence: true,uniqueness: true, length: {maximum: 8}
  validates :type_of_tr, presence: true, length: {maximum: 8}
  validates :withdrawal_amt, presence: true
  validates :withdrawal_amt_is_valid
  validates :deposit_amt, presence: true
  validates :deposit_amt_is_valid
  belongs_to :account
  belongs_to :loan




  private
  def widrawal_amt_is_valid
    if self.withdrawal_amt >= 100
      errors.add(:withdrawal_amt, "must be greater then 100")
    end
  end 


def deposit_amt_is_valid
    if self.deposit_amt >= 100
      errors.add(:deposit_amt, "must be greater then 100")
    end
  end 
end