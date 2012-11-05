class Take < ActiveRecord::Base
  attr_accessible :course_id, :user_id, :lecture_id, :last_position
  belongs_to :user
  belongs_to :course
  
  #after_save :set_last_lecture_reference_nil
  
  
  def set_last_lecture_reference( lect_id )
    if lect_id
      if self.last_position < Lecture.find(lect_id).position
        self.update_attributes(:lecture_id => lect_id, :last_position => Lecture.find(lect_id).position )
      else
        self.update_attribute(:lecture_id, lect_id )
      end
    else
      #self.update_attributes(:lecture_id => self.course.lectures.first.id , :last_position => self.course.lectures.first.position )
      self.update_attributes(:lecture_id => self.course.lectures.first.id , :last_position => 0 )
    end    
  end
  
  def progress
    if self.last_position == nil
      self.last_position = 0;
    end
    
    return 100*self.last_position / course.lectures.size
  end
  
  def set_last_lecture_reference_nil
    self.set_last_lecture_reference(nil)
  end
  
end
