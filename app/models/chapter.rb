class Chapter < ActiveRecord::Base
  attr_accessible :title, :lectures, :lectures_attributes
  belongs_to :course

  has_many :lectures
  
  accepts_nested_attributes_for :lectures, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
end
