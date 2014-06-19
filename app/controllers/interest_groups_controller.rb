class InterestGroupsController < ApplicationController
  before_action :authenticate_admin!, only: [:edit, :new, :update, :destroy, :create]

  respond_to :json, :html

  def index
    @igroups = InterestGroup.all
    @uigroups = UserInterestGroup.new
    respond_with @igroups
  end

  def new
    @igroup = InterestGroup.new
  end

  def create
    @igroup = InterestGroup.new(igroup_params)
      if @igroup.save
        respond_to do |format|
        format.html { redirect_to root_path }
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
  end

  def show
    @igroup = InterestGroup.find(params[:id])
    respond_with @igroup
  end

  def update
  end

  def destroy
  end

private 

  def igroup_params
    params.require(:interest_group).permit(:name)
  end


end
