class Genre
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.all
    @all
  end


  def songs

  end

end
