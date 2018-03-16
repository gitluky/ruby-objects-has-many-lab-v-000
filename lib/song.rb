require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist.name if self.artist
  end

end

new_song = Song.new('new song')
binding.pry
