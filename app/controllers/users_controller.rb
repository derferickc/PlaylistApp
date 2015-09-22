class UsersController < ApplicationController

    def create
    user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
  	user.save
  	if user.save
  		flash[:success] = "Successfully added new user"
  		redirect_to '/users/main'
    else
  		flash[:errors] = user.errors.full_messages
  		redirect_to '/users/main'
	  end
	end

	def show
		@users = User.find(params[:id])
		@playlists = Playlist.where(user: User.find(params[:id]))
	  @addCount = Playlist.where(user: User.find(params[:id]))
  end

end
