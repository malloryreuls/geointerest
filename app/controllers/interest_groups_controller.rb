class InterestGroupsController < ApplicationController
  before_action :authenticate_admin!, only: [:edit, :new, :update, :destroy, :create]

  def index
    @igroups = InterestGroup.all
  end

  def new
    @igroup = InterestGroup.new
  end

  def create
    @igroup = InterestGroup.new(igroup_params)
    respond_to do |format|
      if @igroup.save
        format.html { redirect_to @igroup, notice: 'Interest group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @igroup }
      else
        format.html { render action: 'new' }
        format.json { render json: @igroup.errors, status: :unprocessable_entity }
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
  end

private 

  def igroup_params
    params.require(:interest_group).permit(:name)
  end


end
