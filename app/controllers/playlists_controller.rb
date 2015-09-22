class PlaylistsController < ApplicationController

  def create
  	Playlist.create(user_id: params[:user_id], song_id: params[:song_id])
  		redirect_to '/songs'
  end

end
