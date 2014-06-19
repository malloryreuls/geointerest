class UsersController < ApplicationController
  def new
  	@igroups = InterestGroup.all
  
  end
end
