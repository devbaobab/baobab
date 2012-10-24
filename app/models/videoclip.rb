class Videoclip < ActiveRecord::Base
  attr_accessible :title, :link, :subtitle_file_link
  belongs_to :lecture
end
