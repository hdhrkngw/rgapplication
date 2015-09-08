class AddSubtitle1ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :subtitle1, :string
  end
end
