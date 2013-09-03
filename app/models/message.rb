class Message < ActiveRecord::Base
  attr_accessible :content, :message_board_id, :name
  belongs_to :message_board
  
  validates :content, :length => { :minimum => 1 }, :presence => true
  validates :name, :length => { :minimum => 1 }, :presence => true
end
