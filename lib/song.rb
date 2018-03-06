class Song

  attr_accessor :name, :artist
  # attr_accessor :name

  def initialize(name)
    @name = name

  end

  def artist_name(name)
    Artist.find_or_create_by_name(name)

  end

  def self.new_by_filename(file)
    # break up the filename
    stuff = file.split(' - ')
    song = self.new(stuff[1])

    # dont understant the error
    # undefined method `artist_name' for Song:Class
    # its right above...
    artist = self.artist_name(stuff[0])
    # self.artist_name(stuff[0])
    artist.add_song(song)

    # song
  end

end
