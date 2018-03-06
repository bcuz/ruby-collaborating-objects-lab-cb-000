class MP3Importer
  attr_accessor :path
def initialize(path)
  @path = path

end

def files

  # Dir["/path/to/search/**/*.rb"]
  cut = @path[/.*\//]
  Dir[cut + "*.mp3"]

end
end
