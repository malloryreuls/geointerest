class UsersController < ApplicationController

  def new
  	@igroups = InterestGroup.all
  end

  def show  
    @myigroups = current_user.interest_groups
  end

  private

  def user_params
  	params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
