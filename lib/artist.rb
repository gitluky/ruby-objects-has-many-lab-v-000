require 'pry'

class Artist

  attr_accessor :name
  attr_reader :songs

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    self.songs << song
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    add_song(new_song)
  end

  def self.song_count
    @@songs.count
  end

end
