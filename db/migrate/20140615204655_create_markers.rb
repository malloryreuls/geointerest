class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :title
      t.string :description
      t.float :latitude
      t.float :longitude
      t.string :address
      t.references :interest_group, index: true

      t.timestamps
    end
  end
end
