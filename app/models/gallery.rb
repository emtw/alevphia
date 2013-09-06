class Gallery < ActiveRecord::Base
  attr_accessible :photo_id, :user_id, :name
  belongs_to :user
  has_many :photos
end
