class Video < ActiveRecord::Base
  attr_accessible :title
  
  belongs_to :courses
  has_many :videoclips
  
end
