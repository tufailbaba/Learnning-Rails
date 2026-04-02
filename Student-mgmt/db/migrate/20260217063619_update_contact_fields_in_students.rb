class UpdateContactFieldsInStudents < ActiveRecord::Migration[8.0]
  def change
    rename_column :students, :contact, :permanent_contact
    add_column :students, :alternate_contact_number, :string
  end
end
