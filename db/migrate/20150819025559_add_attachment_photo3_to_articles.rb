class AddAttachmentPhoto3ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :photo3
    end
  end

  def self.down
    remove_attachment :articles, :photo3
  end
end
