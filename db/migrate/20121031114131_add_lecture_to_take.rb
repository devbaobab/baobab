class AddLectureToTake < ActiveRecord::Migration
  def change
    add_column :takes, :lecture_id, :integer
  end
end
