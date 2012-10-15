class AddLinkToVideoclip < ActiveRecord::Migration
  def change
    add_column :videoclips, :link, :string
  end
end
