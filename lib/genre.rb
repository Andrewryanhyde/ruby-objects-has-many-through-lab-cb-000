class Genre
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title, artist)
    title = Song.new(title)
    title.artist = artist
    title.genre = self
    @songs << title
  end


  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
  end
end
