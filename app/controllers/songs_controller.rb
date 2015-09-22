class SongsController < ApplicationController

  def index
	@me = User.find(session[:user_id])
	@songs = Song.all
  @playlists = Playlist.all
  end

  def create
  	song = Song.new(artist: params[:artist], title: params[:title], user_id: session[:user_id])
  	song.save
  	if song.save
  		flash[:success] = "Successfully added new song"
  		redirect_to '/songs'
    else
  		flash[:errors] = song.errors.full_messages
  		redirect_to '/songs'
	  end
  end

  def show
  	@songs = Song.where(id: params[:id])
  	@playlists = Playlist.where(song_id: params[:id])
  end

end
