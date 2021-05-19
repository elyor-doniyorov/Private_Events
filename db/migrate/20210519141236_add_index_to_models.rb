class AddIndexToModels < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key "events", "users", column: "creator_id"
    add_foreign_key "invites", "events"
    add_foreign_key "invites", "users"
  end
end
