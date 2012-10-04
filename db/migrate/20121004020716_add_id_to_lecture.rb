class AddIdToLecture < ActiveRecord::Migration
  def change
    add_column :lectures, :chapter_id, :integer
  end
end
