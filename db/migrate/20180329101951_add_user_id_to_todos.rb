class AddUserIdToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :board_id, :integer
  end
end
