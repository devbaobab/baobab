class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :avatar, :email, :password, :password_confirmation, :remember_me, :group_ids, :group, :fullname, :gender, :birthday, :introduction, :simple_job, :interest, :subtitle
  # attr_accessible :title, :body
  

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  
  has_many :memberships
  has_many :groups , :through => :memberships
  
  has_many :preferences
  has_many :interests, :through => :preferences
  
  has_one :employment
  has_one :job, :through => :employment
  #has_many :takes
  #has_many :courses, :through => :takes
  
  has_many :takes
  has_many :courses , :through => :takes

  accepts_nested_attributes_for :memberships
  
  def role?(role)
    groups.any? { |r| r.name.underscore.to_sym == role}
  end

  def takes?(course_id)
    !self.takes.where(:course_id => course_id).empty?
  end
  
  def turnLecturer
    lecture_group = Group.find_by_name("lecturer")
    self.memberships.create(:user_id => self.id, :group_id => lecture_group.id)
  end
  
end
