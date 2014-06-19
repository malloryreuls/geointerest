class UsersController < ApplicationController

  def new
  	@igroups = InterestGroup.all
  end

  def show
  	@igroups = InterestGroup.all
  end

  private

  def user_params
  	params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
