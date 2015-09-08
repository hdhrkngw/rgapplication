class AddAttachmentPhoto5ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :photo5
    end
  end

  def self.down
    remove_attachment :articles, :photo5
  end
end
