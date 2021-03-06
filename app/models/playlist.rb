class Playlist < ApplicationRecord
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  belongs_to :user

  def virtual_attribute
    "This playlist is awesome"
  end

end
