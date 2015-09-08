class AddSubtitle3ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :subtitle3, :string
  end
end
