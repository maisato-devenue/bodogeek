class ChangeDataPassToRoom < ActiveRecord::Migration[7.0]
  def change
    change_column :rooms, :pass, :string
  end
end
