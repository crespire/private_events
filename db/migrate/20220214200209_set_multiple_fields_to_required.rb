class SetMultipleFieldsToRequired < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :name, false
    change_column_null :events, :name, false
    add_column :events, :published, :boolean, default: false
  end
end
