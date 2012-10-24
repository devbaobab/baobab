class AddSubtitleToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :subtitle, :text
  end
end
