class UsersController < ApplicationController

  def new
  	@igroups = InterestGroup.all
  end

  def show
    @user = User.find(params[:id])
    # our profile page- allows us to see all of the interest groups we follow
    @igroups = InterestGroup.all
  end

  private

  def user_params
  	params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
