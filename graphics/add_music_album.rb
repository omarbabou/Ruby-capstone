require 'json'
require_relative '../apps/music_album'
require_relative '../apps/genre'

def music_album_data
  valid = false
  print 'Publish Date: '
  publish_date = gets.chomp
  on_spotify = ''
  until valid
    print 'On Spotify Y/N:'
    on_spotify = gets.chomp.downcase
    valid = %w[y n].include?(on_spotify)
    on_spotify = '' unless valid
    puts 'Please insert y or n as the on spotify' unless valid
  end
  spotify = false
  spotify = true if on_spotify == 'y'
  [publish_date, spotify]
end