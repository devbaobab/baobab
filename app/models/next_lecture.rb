class NextLecture < ActiveRecord::Base
  attr_accessible :lecture_id, :next_id
  
  belongs_to :lecture
  belongs_to :next, :class_name => "Lecture"
  
end
