class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.text :image
      t.string :cuisine
      t.string :address
      t.decimal :price
      t.integer :servings
      t.text :notes
      t.integer :user_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
