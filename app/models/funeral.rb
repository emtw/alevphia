class Funeral < ActiveRecord::Base
  attr_accessible :additional_reqs, :ashes_location, :burial_location, :casket_pref, :donations_to, :dress_code, :epitaph, :final_words, :flowers, :funeral_pref, :other_pref, :readings,
                  :user_id, :service_location, :songs_pref, :speakers, :wake
  
  belongs_to :user
  
end
