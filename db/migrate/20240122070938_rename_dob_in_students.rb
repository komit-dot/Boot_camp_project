class RenameDobInStudents < ActiveRecord::Migration[6.1]
  def change
    rename_column :students, :date_of_birth, :datee_of_birth
  end
end
