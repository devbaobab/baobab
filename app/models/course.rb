class Course < ActiveRecord::Base
  attr_accessible :description, :name, :snapshot, :price, :subtitle, :intro_video_link, :category_ids, :lectures, :chapters ,:chapters_attributes, :lectures_attributes, :authours, :big_snapshot
  
  
  has_attached_file :snapshot, :styles => { :medium => "270x171", :thumb => "270x171"}
  
  #belongs_to :take
  has_many :takes, :dependent => :destroy
  has_many :users, :through => :takes
  #belongs_to :user, :through => :take
  #belongs_to :user , :through => :own
  
  has_many :categorizations, :dependent => :destroy
  has_many :categories, :through => :categorizations
  has_many :comments, :as => :commentable


  has_many :lectures, :dependent => :destroy
  has_many :chapters, :dependent => :destroy
  # has_many :videos, :dependent => :destroy
  # has_many :videoclips, :dependent => :destroy #, :through => :videos
  
  accepts_nested_attributes_for :categorizations
  accepts_nested_attributes_for :chapters, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true 
  accepts_nested_attributes_for :lectures, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true 
  # accepts_nested_attributes_for :videoclips, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
  has_many :authours

  after_save :update_nested_references
  
  def isAuthour?(user_id)
    
  end
  
  
  def authour
    User.find(self.authours.first.user_id)
  end
  
  def assign(user_id)
    unless !self.takes.where(:course_id => self.id, :user_id => user_id).empty?
      take = Take.create(:course_id => self.id, :user_id => user_id)
      self.takes << take
    end
    return take
    
  end
  
  def unassign(user_id)
    self.takes.where(:course_id => self.id, :user_id => user_id).each do |take|
      take.destroy
    end
  end
  
  private
    def has_authour
      a = self.authour
      a.nil?
    end
    
    
    def update_nested_references
      lecture_position = 1
      self.chapters.each do |chapter|
        chapter.lectures.each do |lecture|
          lecture.update_attributes(:course_id => self.id, :position => lecture_position)
          lecture_position += 1
        end
      end

      prev_lecture = nil
      self.lectures.each do |lecture|
        if prev_lecture
          NextLecture.create!({:lecture_id => prev_lecture.id, :next_id => lecture.id })
        end
        prev_lecture = lecture
      end
    end
  
end
