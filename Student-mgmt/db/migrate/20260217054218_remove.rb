class Remove < ActiveRecord::Migration[8.0]
  def change
    remove_column :students, :age, :integer
  end
end
