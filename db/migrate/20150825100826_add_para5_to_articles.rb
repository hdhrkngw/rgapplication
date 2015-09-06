class AddPara5ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :para5, :text
  end
end
