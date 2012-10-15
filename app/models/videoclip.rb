class Videoclip < ActiveRecord::Base
  attr_accessible :title, :link
  
  belongs_to :lecture
end
