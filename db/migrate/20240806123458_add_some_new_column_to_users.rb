class AddSomeNewColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :some_new_column, :string
  end
end
