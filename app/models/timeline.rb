class Timeline < ActiveRecord::Base
  attr_accessible :event_id, :user_id
  
  belongs_to :user
  has_many :events, dependent: :destroy
end
