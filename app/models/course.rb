class Course < ActiveRecord::Base
  attr_accessible :description, :name, :snapshot
  has_attached_file :snapshot, :styles => { :medium => "280x171", :thumb => "280x171"}
end
