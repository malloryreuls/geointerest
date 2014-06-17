json.markers do |json|
	json.array!(@markers) do |marker|
	  json.extract! marker, :id, :title, :description, :latitude, :longitude, :address
	  json.url marker_url(marker, format: :json)
	end
end