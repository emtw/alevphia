class Photo < ActiveRecord::Base
  attr_accessible :description, :gallery_id, :image, :title, :uploaded_by, :remote_image_url
  mount_uploader :image, ImageUploader
  
  belongs_to :gallery
end
