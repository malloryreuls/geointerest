class InterestGroupSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :markers

end
