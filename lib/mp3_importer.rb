class MP3Importer
  attr_accessor :path
def initialize(path)
  @path = path

end

def files

  # Dir["/path/to/search/**/*.rb"]
  # didnt have to
  # cut = @path[/.*\//]
  raw = Dir[@path + "/*"]

  raw.collect {|file| File.basename file }
end
def import(filename)

end
end
