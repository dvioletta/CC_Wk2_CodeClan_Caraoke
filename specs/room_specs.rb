require("minitest/autorun")
require("minitest/rg")
require_relative("../song")
require_relative("../guest")
require_relative("../room")

class RoomTest < MiniTest::Test

  def setup

    @room_1 = Room.new("Elivis Suite", 30, 3)
    @room_2 = Room.new("Queen Suite", 70, 8)


    @guest_1 = Guest.new("Fiona Brown", 50, "Rolling in the Deep")
    @guest_2 = Guest.new("Liz Taylor", 60, "Baby One More Time")
    @guest_3 = Guest.new("Patrick How", 40, "Thriller")
    @guest_4 = Guest.new("Tom Jones", 50, "Rolling in the Deep")
    @guest_5 = Guest.new("Gordon Brown", 100, "When Dove Cry")

    @song_1 = Song.new("When Doves Cry", "Prince")
    @song_2 = Song.new("Rolling in the Deep", "Adele")
    @song_3 = Song.new("Thriller", "Michael Jackson")
    end

    def test_suite_has_price
        assert_equal(30, @room_1.price())
      end

  end
