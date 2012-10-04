class Lecture < ActiveRecord::Base
  attr_accessible :title
  
  belongs_to :course
  belongs_to :chapter
  
  has_one :articles
  has_one :videoclips
  
end
