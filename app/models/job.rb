class Job < ActiveRecord::Base
  attr_accessible :description, :title
  
  has_many :employments
  has_many :users, :through => :employments
  
end
