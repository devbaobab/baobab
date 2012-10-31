class AddLastPositionToTake < ActiveRecord::Migration
  def change
    add_column :takes, :last_position, :integer
  end
end
