#==========================use rdoc to generateyour own documentation I
#Rdoc is a built-in ruby tool that generates documentation based on the comments left in the code.
#
class Album
  include Enumerable

  # An array object of song.
  attr_reader :songs

  # Creates a new album instance with an empty song array
  def initialize
    @songs = []
  end

  # Add a song to the Album object's song array
  def add_song(song)
    songs << song
  end

  # yield each in song the album to a clock
  def each
    songs.each do |song|
      yield song
    end
  end
end

thriller = Album.new
thriller.add_song("Thriller")
thriller.add_song("Bllie Jean")
puts thriller.songs
