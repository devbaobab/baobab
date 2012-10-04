class Categorization < ActiveRecord::Base
  attr_accessible :category_id, :course_id
  belongs_to :course
  belongs_to :category
  
  attr_accessor :included
  after_find :set_included
  
  private
  
  def set_included
    self.included = "1"
  end
  
end
