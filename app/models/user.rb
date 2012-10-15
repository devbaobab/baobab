class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :group_ids, :group, :fullname
  # attr_accessible :title, :body
  
  
  has_many :memberships
  has_many :groups , :through => :memberships
  
  #has_many :takes
  #has_many :courses, :through => :takes
  
  #has_many :owns
  has_many :courses #, :through => :owns

  accepts_nested_attributes_for :memberships
  
  def role?(role)
    groups.any? { |r| r.name.underscore.to_sym == role}
  end

end
