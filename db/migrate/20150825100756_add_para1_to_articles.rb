class AddPara1ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :para1, :text
  end
end
