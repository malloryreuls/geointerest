class AddAvatarColumnsToMarkers < ActiveRecord::Migration
  def change
  	add_attachment :markers, :avatar
  end
end
