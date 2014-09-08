class Listing < ActiveRecord::Base
  validates_presence_of :description
  validates_presence_of :location
  validates_presence_of :price
  validates_presence_of :available

  belongs_to :user
end
