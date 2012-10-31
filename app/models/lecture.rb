class Lecture < ActiveRecord::Base
  attr_accessible :title, :video_clip_link, :video_script_link, :position, :course_id
  
  belongs_to :course
  belongs_to :chapter
  
  has_many :comments, :as => :commentable
  
  has_one :next_lecture
  has_one :next, :through => :next_lecture
  
  has_one :previous_lecture, :class_name => "NextLecture", :foreign_key => "next_id"
  has_one :previous, :through => :previous_lecture, :source => :lecture
  
  
  has_one :article
  #has_one :videoclip
  
  #accepts_nested_attributes_for :videoclip, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :article, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
  
  
  
end
