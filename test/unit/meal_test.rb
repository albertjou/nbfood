# == Schema Information
#
# Table name: meals
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  cuisine    :string(255)
#  address    :string(255)
#  price      :decimal(, )
#  servings   :integer
#  notes      :text
#  user_id    :integer
#  latitude   :float
#  longitude  :float
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MealTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
