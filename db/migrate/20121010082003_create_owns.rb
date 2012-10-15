class CreateOwns < ActiveRecord::Migration
  def change
    create_table :owns do |t|
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
