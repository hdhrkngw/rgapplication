class AddSubtitle2ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :subtitle2, :string
  end
end
