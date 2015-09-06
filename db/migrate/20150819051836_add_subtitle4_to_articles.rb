class AddSubtitle4ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :subtitle4, :string
  end
end
