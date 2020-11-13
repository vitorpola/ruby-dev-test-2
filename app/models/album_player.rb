class AlbumPlayer < ApplicationRecord
  belongs_to :album
  validates_presence_of :album_id
  belongs_to :player
  validates_presence_of :player_id
  validates :album_id, uniqueness: { scope: :player_id }
end
