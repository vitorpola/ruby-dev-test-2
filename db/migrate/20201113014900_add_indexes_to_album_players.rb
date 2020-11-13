class AddIndexesToAlbumPlayers < ActiveRecord::Migration[5.2]
  def change
    add_index :album_players, [:album_id, :player_id], unique: true
  end
end
