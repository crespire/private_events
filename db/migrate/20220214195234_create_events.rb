class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :event_date
      t.boolean :open_join
      t.integer :max_guests

      t.timestamps
    end
  end
end
