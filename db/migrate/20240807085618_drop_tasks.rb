class DropTasks < ActiveRecord::Migration[7.1]
  def up
    drop_table :tasks
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
