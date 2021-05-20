class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :discription
      t.date :date
      t.integer :creator_id

      t.timestamps
    end
  end
end
