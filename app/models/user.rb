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

  attr_accessible :bio, :cook, :email, :fname, :image, :lname, :password, :password_confirmation, :phone, :username, :order_ids, :dob, :cook, :rating

  has_many :orders
  has_many :meals

    # Email
  before_save {self.email = email.downcase}
  before_save {self.username = username.downcase}
    # Validations
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

  validates :password,
          :length => {
            :minimum => 6,
            :if => lambda{ new_record? || !password.nil? },
            :message => "must be at least 6 characters" }

  validate :dob_must_be_greater_than_12


def dob_must_be_greater_than_12
    errors.add(:dob, "error. You must be at least 12 to sign up") if
      !dob.blank? and (dob >= (Date.today - 12.years))
end

    # Mailboxer
# acts_as_messageable

# def name
#   email
# end



    # Image Uploading
  mount_uploader :image, ImageUploader

end
