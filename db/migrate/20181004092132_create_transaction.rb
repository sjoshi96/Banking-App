class CreateTransaction < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
    	t.integer :transaction_ID
    	t.integer :type_of_tr
    	t.integer :withdrawal_amt
    	t.integer :deposit_amt
    end
  end
end
