class RenameAddressToPermanentAddress < ActiveRecord::Migration[6.1]
  def change
    rename_column :students, :contact_number, :permanent_contact_number
    add_column :students, :alternate_contact_number, :string
  end
end
