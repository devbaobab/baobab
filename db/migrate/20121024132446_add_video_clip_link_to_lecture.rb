class AddVideoClipLinkToLecture < ActiveRecord::Migration
  def change
    add_column :lectures, :video_clip_link, :string
  end
end
