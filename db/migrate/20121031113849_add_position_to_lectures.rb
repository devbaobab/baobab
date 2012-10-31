class AddPositionToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :position, :integer
  end
end
