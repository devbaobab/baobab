class Lecture < ActiveRecord::Base
  attr_accessible :title, :video_clip_link, :video_script_link
  
  belongs_to :course
  belongs_to :chapter
  
  has_one :article
  #has_one :videoclip
  
  #accepts_nested_attributes_for :videoclip, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :article, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
  
  
end
