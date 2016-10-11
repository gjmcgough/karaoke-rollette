class Party < ApplicationRecord
  has_many :users
  has_many :playlists, through: :users
  has_many :song_matches

  def token
    charset = Array('A'..'Z') + Array('a'..'z')
    Array.new(5) { charset.sample }.join
  end

 # build party queue
  def build_playlist
    party_queue = []
    queues = playlists.each do |playlist|
      playlist.songs.each do |song|
        party_queue << song
      end
    end
    party_queue
  end
  
end
