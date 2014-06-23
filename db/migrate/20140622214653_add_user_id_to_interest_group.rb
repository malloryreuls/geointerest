class AddUserIdToInterestGroup < ActiveRecord::Migration
  def change
    add_column :interest_groups, :user_id, :string
  end
end
