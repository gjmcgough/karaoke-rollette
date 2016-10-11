class Api::PlaylistsController < ApplicationControlle
  before_action :set_user

  def index
    render json: @user.playlist.to_json(include: [:songs, :user])
  end


end
