class Add < ActiveRecord::Migration[6.1]
  def up
    add_column :students, :local_address, :string
    add_column :students, :permanent_address, :string
  end

  def down
    remove_column :students, :local_address, :string
    remove_column :students, :permanent_address, :string
  end 
end
