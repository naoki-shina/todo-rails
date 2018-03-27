class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.string  :text, null: false, unique: true
      t.date    :limit

      t.timestamps
    end
  end
end
