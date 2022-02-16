class AddForeignKeyConstraintsToDb < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :events, :users, column: :creator_id
    add_foreign_key :invitations, :events, column: :event_id
    add_foreign_key :invitations, :users, column: :attendee_id

    remove_column :events, :attendee_id
  end
end
