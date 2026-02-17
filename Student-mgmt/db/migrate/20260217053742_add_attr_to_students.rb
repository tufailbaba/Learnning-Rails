class AddAttrToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :dob, :date
    add_column :students, :age, :integer
    add_column :students, :address, :string
    add_column :students, :contact, :string
    add_column :students, :local_address, :string
    add_column :students, :permanent_address, :string
  end
end
