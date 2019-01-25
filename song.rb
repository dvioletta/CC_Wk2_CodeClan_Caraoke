require("pry")

class Song

attr_reader :title, :artist

  def initialize (title, artist)
    @title = title
    @artist = artist
  end

  def get_title()
    return @title
  end

  def get_artist()
    return @artist
  end

end
