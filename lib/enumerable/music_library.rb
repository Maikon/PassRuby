class Song
  attr_reader :title, :artist, :duration

  def initialize(title, artist, duration)
    @title, @artist, @duration = title, artist, duration
  end
end

class MusicLibrary
  attr_reader :songs

  def initialize(songs)
    @songs = songs
  end

  def upcase_titles
    songs.each do |song|
      song.title.upcase!
    end
  end

  def format
    songs.map do |song|
      "Artist: #{song.artist}, Title: #{song.title}" 
    end
  end
end
