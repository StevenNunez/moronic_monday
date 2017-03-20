class Genre
  def self.new(name)
    instance = Genre.allocate
    instance.initialize(name)
  end
end
class Artist
  attr_accessor :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    song.artist
    song.artist=(self)
    self.songs << song
  end

  def name
    featured_artists = ["Beyonce"]
    if featured_artists.include?(@name)
      "*-_#{@name}_-*"
    else
      @name
    end
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
    # song.artist = self
    # self.songs << song
    song
  end

  def to_s
    "The artist #{name} has loads of songs, such as #{songs.join(' ') }"
  end
end

class Song
  attr_reader :name
  attr_accessor :artist

  def self.all
    "Tons"
  end

  def initialize(name)
    @name = name
  end
  def add_artist(artist)

  end

  def to_s
    "Song Name: #{name}"
  end
end

#
# #
# adele = Artist.new("Adele")
# rolling = Song.new("Rolling in the deep")
# # rolling = adele.add_song_by_name("Rolling in the deep")  # => #<Song:0x007fde5505e7c8 @name="Rolling in the deep", @artist=#<Artist:0x007fde5505fc90 @name="Adele", @songs=[#<Song:0x007fde5505e7c8 ...>]>>
#
# adele.add_song(rolling)
#
# puts rolling.artist
#
# # adele = {name: "Adele", songs: []}
# # rolling_in_the_deep = {name: "Rolling in the Deep"}
# #
# # def add_song(artist, song)
# #   artist[:songs] << song
# # end
# #
# # add_song(adele, rolling_in_the_deep)
# # puts adele
#
# beyonce = Artist.new("Beyonce")
# beyonce.add_song_by_name("Crazy in Love")
# puts beyonce
#
# self.methods
# require 'pry'
# binding.pry
