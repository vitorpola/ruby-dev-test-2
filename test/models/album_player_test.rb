require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  test "valid album" do
    album_player = AlbumPlayer.new(player: players(:shakira), album: albums(:fijacion))
    assert album_player.valid?
  end
  test "presence of player" do
    album_player = AlbumPlayer.new
    assert_not album_player.valid?
    assert_not_empty album_player.errors[:player_id]
    assert_not_empty album_player.errors[:album_id]
  end
end
