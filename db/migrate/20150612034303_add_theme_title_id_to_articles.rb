class AddThemeTitleIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :theme_title_id, :integer
    add_index :articles, :theme_title_id
  end
end
