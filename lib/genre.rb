class Genre
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def songs
    @songs
  end

end
