class AddPara4ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :para4, :text
  end
end
