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

class Meal < ActiveRecord::Base
  attr_accessible :cuisine, :image, :name, :notes, :price, :user_id, :servings, :order_ids, :address, :rating
  has_many :orders
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  mount_uploader :image, ImageUploader
end
