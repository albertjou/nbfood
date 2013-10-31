class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.string :image
      t.string :cuisine
      t.string :address
      t.decimal :price, scale: 2
      t.integer :servings
      t.text :notes
      t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.integer :rating
      t.datetime :scheduled

      t.timestamps
    end
  end
end
