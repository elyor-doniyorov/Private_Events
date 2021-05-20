class CreateInvites < ActiveRecord::Migration[6.1]
  def change
    create_table :invites do |t|
      t.integer :event_id
      t.integer :user_id
      t.boolean :attendence

      t.timestamps
    end
  end
end
