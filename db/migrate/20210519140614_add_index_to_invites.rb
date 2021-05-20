class AddIndexToInvites < ActiveRecord::Migration[6.1]
  def change
    add_index :invites, :event_id
    add_index :invites, :user_id
  end
end
