class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to books_path
    else
      flash[:error_message] = "Something went wrong. Please try again!"
      redirect_to new_sessions_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've been logged out"
    redirect_to root_path
  end

end
