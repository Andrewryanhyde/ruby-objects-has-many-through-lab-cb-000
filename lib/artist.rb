class Artist

  attr_accessor :name, :artist, :genre

  @@all = []

  @@songs = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end


  def self.all
    @@all
  end

  def new_song(name, artist, genre)
    name = Song.new(name)
    name.artist = artist
    name.genre = genre
    @songs << name

  end

  def songs
    @songs.select {|song| song.artist}
  end


  def genres
    @songs.collect do |song|
      song.genre
    end
  end




end
