class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(file)
    # break up the filename
    stuff = file.split(' - ')
    song = self.new(stuff[1])

    # when does a song get an artist?

    # confused
    self.artist.name = stuff[0]
    # song
  end
end
