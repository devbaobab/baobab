class AddAttachmentBigSnapshotToCourses < ActiveRecord::Migration
  def self.up
    change_table :courses do |t|
      t.has_attached_file :big_snapshot
    end
  end

  def self.down
    drop_attached_file :courses, :big_snapshot
  end
end
