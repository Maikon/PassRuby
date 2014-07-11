require 'spec_helper'

describe MusicLibrary do
    let(:song_1) { Song.new('Sweet Child Of Mine', "Guns'N'Roses", 355) }
    let(:song_2) { Song.new('Pretender', "Foo Fighters", 330) }
    let(:library) { MusicLibrary.new([song_1, song_2]) }

  it 'makes all the song names uppercase' do
    library.upcase_titles
    expect(song_1.title).to eq 'SWEET CHILD OF MINE'
    expect(song_2.title).to eq 'PRETENDER'
  end

  it 'formats songs without duration' do
    formatted_songs = library.format
    expect(formatted_songs.first).to eq "Artist: Guns'N'Roses, Title: Sweet Child Of Mine"
    expect(formatted_songs.last).to eq "Artist: Foo Fighters, Title: Pretender"
  end
end
