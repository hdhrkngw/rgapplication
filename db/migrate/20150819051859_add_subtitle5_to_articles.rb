class AddSubtitle5ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :subtitle5, :string
  end
end
