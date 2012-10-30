class CreateNextLectures < ActiveRecord::Migration
  def change
    create_table :next_lectures do |t|
      t.integer :lecture_id
      t.integer :next_id

      t.timestamps
    end
  end
end
