class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    ans = self.all.collect do |person|
      if !person.name
        artist = self.new(name)
        # artist.name = name
        # artist
      else
        person.name
      end
    end
    ans[0]
  end
end
