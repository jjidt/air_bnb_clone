class Listing < ActiveRecord::Base
  validates_presence_of :description
  validates_presence_of :location
  validates_presence_of :price
  validates_presence_of :available

  belongs_to :user
  has_many :comments

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
