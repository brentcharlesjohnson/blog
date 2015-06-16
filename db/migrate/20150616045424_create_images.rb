class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.ThemeTitle :references

      t.timestamps null: false
    end
		add_attachment :images, :content
  end
end
