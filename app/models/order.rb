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

class Order < ActiveRecord::Base
  attr_accessible :servings, :user_id, :meal_id, :status, :rating, :pickup
  belongs_to :user
  belongs_to :meal

# Validation



end
