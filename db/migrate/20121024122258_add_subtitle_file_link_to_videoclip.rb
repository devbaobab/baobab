class AddSubtitleFileLinkToVideoclip < ActiveRecord::Migration
  def change
    add_column :videoclips, :subtitle_file_link, :string
  end
end
