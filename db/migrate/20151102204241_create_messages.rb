class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :country
      t.string :city
      t.text :comment

      t.timestamps null: false
    end
  end
end
