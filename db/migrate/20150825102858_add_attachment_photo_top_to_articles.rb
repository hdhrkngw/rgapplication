class AddAttachmentPhotoTopToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :photo_top
    end
  end

  def self.down
    remove_attachment :articles, :photo_top
  end
end
