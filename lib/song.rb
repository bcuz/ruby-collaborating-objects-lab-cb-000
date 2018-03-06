class Song

  attr_accessor :name, :artist, :artist_name
  # attr_accessor :name

  def initialize(name)
    @name = name

  end

  def artist_name(name)
    Artist.find_or_create_by_name(name)
    # how does this access the song though? return it?

  end

  def self.new_by_filename(file)
    # break up the filename
    stuff = file.split(' - ')
    song = self.new(stuff[1])

    # dont understant the error
    artist = self.artist_name(stuff[0])
    self.artist_name(stuff[0])
    artist.add_song(song)

    # song
  end

end
