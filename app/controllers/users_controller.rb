class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
    if @user.save
      flash[:success] = "Sign up successful"
      redirect_to root_path
    else
      flash[:danger] = "Sign up failed, try again"
      render 'new'
    end
  end

  def show
  	@igroups = InterestGroup.all
  end

  private

  def user_params
  	params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
