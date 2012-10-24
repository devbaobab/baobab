class AddVideoScriptLinkToLecture < ActiveRecord::Migration
  def change
    add_column :lectures, :video_script_link, :string
  end
end
