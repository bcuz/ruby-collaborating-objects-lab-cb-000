class Song

  attr_accessor :name, :artist, :artist_name
  # attr_accessor :name

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(file)
    # break up the filename
    stuff = file.split(' - ')
    song = self.new(stuff[1])

    # when does a song get an artist?

    # confused
    # like it doenst have a setter. but it does.
    artist = self.artist_name(stuff[0])
    artist.add_song(song)

    # song
  end

  def artist_name(name)
    obj = Artist.find_or_create_by_name(name)

    # how does this access the song though? return it?

  end
end
