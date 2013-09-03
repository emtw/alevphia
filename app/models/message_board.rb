class MessageBoard < ActiveRecord::Base
  attr_accessible :message_id, :user_id
  belongs_to :user
  has_many :messages
end
