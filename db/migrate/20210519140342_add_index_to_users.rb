class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :name
  end
end
