class AddListToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :list, :integer, null: false
  end
end
