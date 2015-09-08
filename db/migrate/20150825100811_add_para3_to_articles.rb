class AddPara3ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :para3, :text
  end
end
