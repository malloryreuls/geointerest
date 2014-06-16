class CreateInterestGroups < ActiveRecord::Migration
  def change
    create_table :interest_groups do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
