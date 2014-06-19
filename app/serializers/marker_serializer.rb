class MarkerSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :address, :latitude, :longitude, :url, :interest_group_id, :igroup_url

  def url
     "http://geointerest.herokuapp.com/interest_groups/#{interest_group_id}/markers/#{id}"
  end

  def igroup_url
  	"http://geointerest.herokuapp.com/interest_groups/#{interest_group_id}"
  end

end
