class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
      flash[:notice] = "Sign Up Succesful! User has been created."
    else
      redirect_to '/sign_up'
      flash[:notice] = "Sign Up was NOT Succesful! Please check your information and try again."
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
