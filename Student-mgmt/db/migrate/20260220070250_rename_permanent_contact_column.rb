class RenamePermanentContactColumn < ActiveRecord::Migration[8.0]
  def change
    rename_column :students, :permanent_contact, :permanent_contact_number
  end
end
