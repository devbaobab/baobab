class Interest < ActiveRecord::Base
  attr_accessible :description, :title

  has_many :preferences
  has_many :users, :through => :preferences
end
