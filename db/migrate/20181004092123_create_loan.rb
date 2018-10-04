class CreateLoan < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
    	t.integer :account_type
    	t.integer :loan_no
    end
  end
end
