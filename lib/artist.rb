class Artist

  attr_accessor :title, :artist, :genre

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

  def new_song(title, genre)
    title = Song.new(title)
    title.artist = artist
    title.genre = genre
    @songs << title
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
