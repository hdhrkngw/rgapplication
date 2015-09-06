class AddAttachmentPhoto4ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :photo4
    end
  end

  def self.down
    remove_attachment :articles, :photo4
  end
end
