class DropTasks < ActiveRecord::Migration[7.1]
  def up
    # Check if the table exists before trying to drop it
    if table_exists?(:tasks)
      drop_table :tasks
    else
      puts "Table 'tasks' does not exist, skipping drop."
    end
  end

  def down
    # Define the reverse of this migration if needed
    create_table :tasks do |t|
      t.string :name
      t.boolean :completed, default: false
      t.integer :user_id
      t.timestamps
    end
    add_index :tasks, :user_id
  end
end
