class Artist

attr_accessor :name, :songs

def self.song_count
  Song.all.size
end

def initialize(name)
    @name = name
    @songs = []
end

def add_song(song)
    @songs << song
    song.artist = self
end

def add_song_by_name(name)
  song = Song.new(name)
  @songs << song
  song.artist = self
end

end
