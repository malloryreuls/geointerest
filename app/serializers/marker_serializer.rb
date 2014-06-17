class MarkerSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :address, :latitude, :longitude
end
