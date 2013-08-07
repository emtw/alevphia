class Event < ActiveRecord::Base
  attr_accessible :caption, :credit, :end_date, :headline, :media, :start_date, :text, :thumbnail, :timeline_id
  
  belongs_to :timeline
  
end
