class AddAttachmentSnapshotToCourses < ActiveRecord::Migration
  def self.up
    change_table :courses do |t|
      t.has_attached_file :snapshot
    end
  end

  def self.down
    drop_attached_file :courses, :snapshot
  end
end
