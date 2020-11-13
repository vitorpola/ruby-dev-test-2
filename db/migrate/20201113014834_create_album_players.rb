class CreateAlbumPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :album_players do |t|
      t.integer :album_id
      t.integer :player_id

      t.timestamps
    end
  end
end
