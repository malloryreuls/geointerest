class RemoveUserInterestGroups < ActiveRecord::Migration
  def change
  	drop_table :user_interest_groups
  end
end
