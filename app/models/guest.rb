class Guest < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  attr_accessible :guest, :name, :user_id, :username, :password, :password_confirmation
  
  belongs_to :user
  
  validates :username, :length => { :minimum => 4, :maximum => 30 }, :presence => true, :uniqueness => true, :username_format => true
  validates :password, :presence => true,
                       :confirmation => true,
                       :password_format => true,
                       :on => :create
  validates :password, :confirmation => true,
                       :password_format => true,
                       :allow_blank => true,
                       :on => :update
end
