class MusicLibraryController

def initialize(path = "./db/mp3s")
  MusicImporter.new(path).import
end

def call
  puts "Welcome to your music library!"
input = ""
until input == "exit"
  puts "To list all of your songs, enter 'list songs'."
  # input.gets.chomp
  case input
  when "list songs"
    list_songs
  when "list artist"
    list_artists
  when "list genres"
    list_genres
  when "play song"
    play_song
  when "list genre"
    list_genre
  when "exit"
    puts "Goodbye!"
  else
    puts "To list all of the artists in your library, enter 'list artists'."
  end
end


end









end
