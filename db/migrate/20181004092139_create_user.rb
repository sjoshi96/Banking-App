class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	 t.integer :branch_code
    	 t.integer :use_ID
    	 t.string :password
    	 t.integer :loan_no
    end
  end
end
