class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    user = User.find_by_name(params[:name])               #looking up user based on name
    if user and user.authenticate(params[:password])       #if find user & run auth if passes test
      session[:user_id] = user.id                           #it ll do these lines
      redirect_to user, :notice => "You are now logged in!" #jump out of one controller to another (render = html file)
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "Logged out"
  end
end
