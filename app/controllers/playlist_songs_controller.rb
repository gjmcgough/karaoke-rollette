class PlaylistSongsController < ApplicationController
  before_action :find_playlist_song, only: [:create, :update]
  before_action :set_user

  def new
    @playlistSong = PlaylistSong.new
    render json: { playlistsong: @playlistSong }
  end

  def create
    # we are creating an association here assuming that song_id and user_id can be passed along
    # @playlistSong = PlaylistSong.create(playlist_id: current_user.playlist.id, song_id: @json['song_id'])
    if @project.present?
      render nothing: true
    else
      @playlistSong = PlaylistSong.new(playlist_id: @json['current_user'].playlist.id, song_id: @json[:song_id])
      head 200
    end


  end

  def destroy
    @playlistsong = PlaylistSong.find_by(song_id: params[:id], playlist_id: @user.playlist.id)
    @playlistsong.destroy
  end

  def find_playlist_song
    render nothing: true unless @playlistSong = PlaylistSong.where(playlist_id: @json['current_user'].playlist.id, song_id: @json[:song_id])

  end

end
