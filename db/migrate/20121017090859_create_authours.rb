class CreateAuthours < ActiveRecord::Migration
  def change
    create_table :authours do |t|
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
