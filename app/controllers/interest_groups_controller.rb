class InterestGroupsController < ApplicationController

  respond_to :json, :html

  def index
    @igroups = InterestGroup.all
    # For the submit form to follow Interest Groups
    @uigroups = UserInterestGroup.new
    @users = User.all
    # creates the interestgroup.json formatted by the currentusers interestgroups that they follow
    @currentigroup = current_user.interest_groups
    respond_with @currentigroup
    @igroup = InterestGroup.new
  end

  def new
   @igroup = InterestGroup.new
  end

  def create
    @igroup = InterestGroup.new(igroup_params)
   
    # creates a new interestgroup formatted for json and html
      if @igroup.save

        respond_to do |format|
        format.html { redirect_to interest_group_path(@igroup) }
        format.json { render json: @igroup, status: :created }
        end
      else
        respond_to do |format|
        format.html { render action: 'new' }
        format.json { render json: @igroup.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @igroup = InterestGroup.find(params[:id])

   
  end

  def show
    @igroups = InterestGroup.all
    @uigroups = UserInterestGroup.new
    @igroup = InterestGroup.find(params[:id])
    respond_with @igroup
    @marker = Marker.new
  end

  def update
    @igroup = InterestGroup.find(params[:id])
    if @igroup.update(igroup_params)
        redirect_to interest_groups_path
      else
        render 'edit'
      end
  end

  def destroy
     @igroup = InterestGroup.find(params[:id])
      @igroup.destroy
      redirect_to interest_groups_path
  end

private 

  def igroup_params
    params.require(:interest_group).permit(:name, :user_id, :avatar, :avatar_file_name, :avatar_content_type, :avatar_file_size)
  end


end
