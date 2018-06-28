class Genre
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end


  def songs
    @@all.each do |genre|
      @songs << genre.artist
    end
  end

end
