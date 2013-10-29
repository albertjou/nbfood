class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.time :expiry
      t.integer :servings, :default => 1
      t.integer :user_id
      t.integer :meal_id
      t.timestamps
    end
  end
end