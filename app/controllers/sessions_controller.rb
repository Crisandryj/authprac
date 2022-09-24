class SessionsController < ApplicationController
  def new
  end

  def create
  user = User.authenticate(user_params)
  if user.present? && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def user_params
  params.require(:user).permit(:email, :password)
end


end
