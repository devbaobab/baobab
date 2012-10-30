class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :interest_id
      t.integer :user_id

      t.timestamps
    end
  end
end
