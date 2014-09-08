class Comment < ActiveRecord::Base
  validates_presence_of :content
  validates_presence_of :rating
  validates_numericality_of :rating, :in => 1..5

  belongs_to :user
  belongs_to :listing
end
