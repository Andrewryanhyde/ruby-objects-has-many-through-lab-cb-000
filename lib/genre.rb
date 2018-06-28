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




  def songs
    @@all.each do |genre|
      genre.song
    end
  end

end
