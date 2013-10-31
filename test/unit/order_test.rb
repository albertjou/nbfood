# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  expiry     :time
#  servings   :integer          default(1)
#  user_id    :integer
#  meal_id    :integer
#  status     :string(255)
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
