class Article < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :lecture
end
