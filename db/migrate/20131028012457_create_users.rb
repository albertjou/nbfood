class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.text :bio
      t.string :password_digest
      t.text :image
      t.boolean :cook
      t.string :username

      t.timestamps
    end
  end
end
