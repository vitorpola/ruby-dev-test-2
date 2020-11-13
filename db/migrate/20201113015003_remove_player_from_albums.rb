class RemovePlayerFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_index :albums, [:player_id]
    remove_column :albums, :player_id
  end
end
