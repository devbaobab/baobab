class Employment < ActiveRecord::Base
  attr_accessible :job_id, :user_id
  
  belongs_to :user
  belongs_to :job
end
