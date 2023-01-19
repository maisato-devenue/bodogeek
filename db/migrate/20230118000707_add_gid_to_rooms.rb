class AddGidToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :game_id, :integer
  end
end
