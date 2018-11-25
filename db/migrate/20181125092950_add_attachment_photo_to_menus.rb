class AddAttachmentPhotoToMenus < ActiveRecord::Migration
  def self.up
    change_table :menus do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :menus, :photo
  end
end
