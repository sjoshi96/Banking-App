class CreateAccount < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
    	t.string :account_type
    	t.string :loan_type
    	t.integer :loan_no
    end
  end
end
