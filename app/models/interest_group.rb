class InterestGroup < ActiveRecord::Base
  belongs_to :user
  has_many :markers

end
