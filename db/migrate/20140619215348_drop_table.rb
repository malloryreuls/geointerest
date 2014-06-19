class DropTable < ActiveRecord::Migration
  def change
  	drop_table :interest_groups_users

  end
end
