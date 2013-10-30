class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.date :dob
      t.string :email
      t.string :phone
      t.text :bio
      t.string :password_digest
      t.string :image
      t.boolean :cook

      t.timestamps
    end
  end
end
