class SetEventOpenJoin < ActiveRecord::Migration[6.1]
  def change
    change_column_default :events, :open_join, true
  end
end
