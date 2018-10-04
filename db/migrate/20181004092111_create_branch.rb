class CreateBranch < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
    t.integer :branch_code
    t.integer :user_ID
    end
  end
end
