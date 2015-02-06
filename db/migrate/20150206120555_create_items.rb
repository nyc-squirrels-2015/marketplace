class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description
      t.string :price, null: false
      t.text :photo_url
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
