class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(strong_params)
    if user.save?
      redirect_to root_url, :notice => "Signed up!"
      else
      render "new"
    end
  end



private

def strong_params
  params.require(:user).permit(:name, :email, :password)
end

end
