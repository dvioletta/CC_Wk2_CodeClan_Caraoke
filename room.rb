require("pry")

class Room

attr_reader :suite, :price, :capacity, :customers, :playlist

  def initialize (suite, price, capacity)
    @suite = suite
    @price = price
    @capacity = capacity
    @playlist = []
    @customers = []
  end

  def add_song(songs)
    @playlist << songs
    return @playlist
  end

  def add_guest(party)
    @customers << party
  end

  def remove_guest(guest)
    @customers.delete(guest)
  end

  def room_capacity()
    return @capacity
  end

  def room_count(room)
    for room in @room
      if @capacity <= @customer.count
        return "Come in"
      end
      return "come back later"
    end
  end


end
