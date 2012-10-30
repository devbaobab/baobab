class AddCourseIdToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :course_id, :integer
  end
end
