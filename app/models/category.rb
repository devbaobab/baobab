class Category < ActiveRecord::Base
  attr_accessible :name
  
  
  has_many :categorizations
  has_many :courses, :through => :categorizations
  
  accepts_nested_attributes_for :categorizations
end
