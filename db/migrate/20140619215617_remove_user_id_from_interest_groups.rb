class RemoveUserIdFromInterestGroups < ActiveRecord::Migration
  def change
    remove_column :interest_groups, :user_id, :integer
  end
end
