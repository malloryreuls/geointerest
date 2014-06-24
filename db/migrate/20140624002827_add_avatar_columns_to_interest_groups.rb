class AddAvatarColumnsToInterestGroups < ActiveRecord::Migration
  def change
  	add_attachment :interest_groups, :avatar
  end
end
