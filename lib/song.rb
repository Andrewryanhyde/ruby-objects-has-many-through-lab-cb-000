class Song

  @@all = []

  attr_accessor :title, :artist, :genre

  def initialize(title, artist, genre)
    @title = title
    @genre = genre
    @artist = artist
    @@all << self
  end

  def self.all
    @@all.each do |song|
      song.artist
    end
  end

end
