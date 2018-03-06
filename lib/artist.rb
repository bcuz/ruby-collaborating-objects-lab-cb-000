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
      else
        person
      end
    end
    ans[0]
  end

  def print_songs
    @songs.each {|i| puts i.name}

  end
end
