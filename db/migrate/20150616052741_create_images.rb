class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.references :theme_title, index: true

      t.timestamps null: false
    end
    add_foreign_key :images, :theme_titles
		add_attachment :images, :content
  end
end
