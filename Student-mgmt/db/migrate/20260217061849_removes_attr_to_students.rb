class RemovesAttrToStudents < ActiveRecord::Migration[8.0]
  def change
    remove_column :students, :address, :string
  end
end
