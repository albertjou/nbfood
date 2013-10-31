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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
