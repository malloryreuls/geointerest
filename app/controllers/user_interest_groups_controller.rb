  class UserInterestGroupsController < ApplicationController
  respond_to :json, :html
# join table between users and interest_groups
  def index

    @uigroups = UserInterestGroup.all
    @igroups = InterestGroup.all
    @markers = Marker.all
    # creates json data for all UserInterestGroup relationships
    respond_with @uigroups
  end

  def new
    @uigroup = UserInterestGroup.new
  end

  def create
    @uigroup = UserInterestGroup.new(uigroup_params)
      if @uigroup.save
        respond_to do |format|
        format.html { redirect_to interest_groups_path }
        format.json { render json: @uigroup, status: :created }
        end
      else
        respond_to do |format|
        format.html { render action: 'new' }
        format.json { render json: @uigroup.errors, status: :unprocessable_entity }
      end
      end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy

    # allows us to unfollow an interest group in interestgroup index be creating a destroy action for the specific userinterestgroup relationship by finding its id
    @uigroup = UserInterestGroup.find(params[:id])  
    @uigroup.destroy
    respond_to do |format|
      format.html { redirect_to interest_groups_path }
      format.json { render json: { head: :ok } }
    end
  end

private

  def uigroup_params
    params.require(:user_interest_group).permit(:user_id, :interest_group_id)
  end

end
