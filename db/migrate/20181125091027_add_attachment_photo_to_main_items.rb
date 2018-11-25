class AddAttachmentPhotoToMainItems < ActiveRecord::Migration
  def self.up
    change_table :main_items do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :main_items, :photo
  end
end
