class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(file)
    # break up the filename

    song = self.new(file)
  end
end
