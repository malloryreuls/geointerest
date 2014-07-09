class ChangeDescriptionTypeInMarkerTable < ActiveRecord::Migration
  def change
  	change_column :markers, :description, :text
  end
end
