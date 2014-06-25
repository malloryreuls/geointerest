class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_attached_file :avatar, :styles => { :original => ['1920x1680>', :jpg, :convert_options => "-auto-orient", :quality => 100], :large => ['600x600>', :jpg, :convert_options => "-auto-orient", :quality => 100] }, :default_url => "missing_profile.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

has_many :user_interest_groups
has_many :interest_groups, through: :user_interest_groups
has_many :markers, through: :interest_groups

validates_presence_of :username

end
