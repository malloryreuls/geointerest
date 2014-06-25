class InterestGroup < ActiveRecord::Base
has_attached_file :avatar, :styles => { :original => ['1920x1680>', :jpg, :convert_options => "-auto-orient", :quality => 100], :large => ['600x600>', :jpg, :convert_options => "-auto-orient", :quality => 100] }, :default_url => "missing.jpg"
validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

validates_presence_of :name, :user_id
# userinterestgroups because is the join table that stores our foreign keys for user
has_many :user_interest_groups
has_many :markers
belongs_to :user

  # accesses users through our join table
  has_many :users, through: :user_interest_groups

  def capital_name
  	name.titleize
  end

end
