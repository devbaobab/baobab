class Course < ActiveRecord::Base
  attr_accessible :description, :name, :snapshot, :price, :category_ids, :lectures, :chapters, :chapters_attributes, :lectures_attributes
  
  
  has_attached_file :snapshot, :styles => { :medium => "280x171", :thumb => "280x171"}
  
  
  has_many :categorizations, :dependent => :destroy
  has_many :categories, :through => :categorizations


  has_many :lectures, :dependent => :destroy
  has_many :chapters, :dependent => :destroy
  has_many :videos, :dependent => :destroy
  # has_many :videoclips, :through => :videos
  
  accepts_nested_attributes_for :categorizations
  accepts_nested_attributes_for :chapters, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true 
  accepts_nested_attributes_for :lectures, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true 
  

  
end
