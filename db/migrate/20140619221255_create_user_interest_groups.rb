class CreateUserInterestGroups < ActiveRecord::Migration
  def change
    create_table :user_interest_groups do |t|
      t.references :user, index:true
      t.references :interest_group, index: true

      t.timestamps
    end
  end
end
