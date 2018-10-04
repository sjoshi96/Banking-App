class CreateBank < ActiveRecord::Migration[5.2]
  def change
    create_table :banks do |t|
    	 t.integer :branch_code
    end
  end
end
