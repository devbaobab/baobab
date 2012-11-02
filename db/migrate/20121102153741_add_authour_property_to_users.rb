class AddAuthourPropertyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subtitle, :string
  end
end
