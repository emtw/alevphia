class Message < ActiveRecord::Base
  attr_accessible :content, :message_board_id, :name
  belongs_to :message_board
end
