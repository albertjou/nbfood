# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  fname           :string(255)
#  lname           :string(255)
#  username        :string(255)
#  dob             :date
#  email           :string(255)
#  phone           :string(255)
#  bio             :text
#  password_digest :string(255)
#  image           :string(255)
#  cook            :boolean
#  rating          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password

  before_save {self.email = email.downcase}
  before_save {self.username = username.downcase}

  attr_accessible :bio, :cook, :email, :fname, :image, :lname, :password, :password_confirmation, :phone, :username, :order_ids, :dob, :cook, :rating

  has_many :orders
  has_many :meals

  validates :username,
            :presence => true,
            :uniqueness => { :case_sensitive => false },
            :length => {
              :maximum => 50,
              :minimum => 3,
              :too_long => "%{count} characters is the maximum allowed" }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
            :confirmation => true,
            :presence => true,
            :format => { :with => VALID_EMAIL_REGEX },
            :uniqueness => { :case_sensitive => false }


  mount_uploader :image, ImageUploader

end
