class SessionsController < ApplicationController

def create
  	user = User.find_by(email: params[:email])
  	if user
  		session[:user_id] = user.id
  		redirect_to "/songs"
  	else 
      flash[:error] = "Invalid email or password"
  		redirect_to '/users/main'
  	end
  end

  def destroy
  	session[:user_id] = nil
    flash[:logout] = "See you later"
  	redirect_to '/users/main'
  end

end
