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

    def test_add_song
      @room_1.add_song(@song_1)
      @room_1.add_song(@song_2)
      @room_1.add_song(@song_3)
      result = [@song_1, @song_2, @song_3]
      assert_equal(result, @room_1.playlist)
    end


    def test_add_guest
      @room_1.add_guest(@guest_1)
      @room_1.add_guest(@guest_2)
      @room_1.add_guest(@guest_3)
      result = [@guest_1, @guest_2, @guest_3]
      assert_equal(result, @room_1.customers )
    end

    def test_remove_guest
      @room_1.add_guest(@guest_1)
      @room_1.add_guest(@guest_2)
      @room_1.remove_guest(@guest_1)
      assert_equal(1, @room_1.customers.count)
    end

    def test_room_capacity
      assert_equal(3, @room_1.capacity)
    end

    def test_room_count
      @room_1.add_guest(@guest_1)
      @room_1.add_guest(@guest_2)
      @room_1.add_guest(@guest_3)
      @room_1.add_guest(@guest_4)
      @customer = [@guest_1, @guest_2, @guest_3, @guest_4]
      assert_equal(4, @room_1.capacity())
    end


    end
