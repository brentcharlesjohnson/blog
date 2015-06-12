class CreateThemeTitles < ActiveRecord::Migration
  def change
    create_table :theme_titles do |t|
      t.string :title
      t.text :details

      t.timestamps null: false
    end
  end
end
