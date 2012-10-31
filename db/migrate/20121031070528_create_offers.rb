class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :course_id
      t.integer :authour_id

      t.timestamps
    end
  end
end
