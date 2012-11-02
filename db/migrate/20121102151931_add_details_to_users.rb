class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :simple_job, :string
    add_column :users, :interest, :string
  end
end
