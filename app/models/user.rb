class User < ActiveRecord::Base
  has_one :playlist
  belongs_to :party
  has_many :song_matches


  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  
end
