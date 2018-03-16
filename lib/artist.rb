require 'pry'

class Artist

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    self.songs << song
    song.artist = self
  end

  def song_count
    self.songs.count
  end

end
