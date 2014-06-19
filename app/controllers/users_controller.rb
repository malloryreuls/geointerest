class UsersController < ApplicationController
  def new
  	@igroups = InterestGroup.all
  
  end

  def show
  	@igroups = InterestGroup.all
  end
end
