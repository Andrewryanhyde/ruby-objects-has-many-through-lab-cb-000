class Genre
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end


  def songs
    @@all.each do |genre|
      genre.artist
    end
  end

end
