class SessionsController < ApplicationController

  def new
  end

  def create

    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])
      #send a cookie to user's browser
      session[:user_id] = u.id
      redirect_to :users
    else
      flash.now[:alert] = 'Incorrect email or password'
      render :new
    end
  end

    def destroy
      #Clear the session cookie
      session[:user_id] = nil

      flash[:notice] = 'You are successfully logged out!'
      redirect_to new_user_path
    end
end
