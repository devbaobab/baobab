class AddIntroVideoLinkToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :intro_video_link, :string
  end
end
