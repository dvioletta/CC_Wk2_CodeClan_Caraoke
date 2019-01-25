require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class SongTest < MiniTest::Test

  def setup
    @song_1 = Song.new("When Doves Cry", "Prince")
    @song_2 = Song.new("Rolling in the Deep", "Adele")
    @song_3 = Song.new("Thriller", "Michael Jackson")
  end

  def test_get_title()
    assert_equal("When Doves Cry", @song_1.get_title)
  end

  def test_get_artist
    assert_equal("Prince", @song_1.get_artist)
  end

end
