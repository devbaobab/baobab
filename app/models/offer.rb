class Offer < ActiveRecord::Base
  attr_accessible :user_id, :course_id
  belongs_to :course
  belongs_to :authour, :foreign_key => "user_id"
end
