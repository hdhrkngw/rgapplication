class AddPara2ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :para2, :text
  end
end
