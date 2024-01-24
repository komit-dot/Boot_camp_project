class ChangeTypeOfDescription < ActiveRecord::Migration[6.1]
  def up
    change_column :courses, :description, :string
  end
  def down
    change_column :courses, :description, :text
  end  
end


  #  change_column :courses, :description, :string

