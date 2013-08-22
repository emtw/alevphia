class Keyholder < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  attr_accessible :first_name, :house, :keyholder, :last_name, :email, :postcode, :user_id, :username, :password, :password_confirmation, :remember_me
  
  belongs_to :user
  
  validates :username, :length => { :minimum => 4, :maximum => 30 }, :presence => true, :uniqueness => true, :username_format => true
  validates :first_name, :length => { :minimum => 2, :maximum => 40 }, :presence => true, :name_format => true
  validates :last_name, :length => { :minimum => 2, :maximum => 40 }, :presence => true, :name_format => true
  validates :email, :presence => true, :email_format => true
  validates :postcode, :postcode_format => true, :allow_blank => true
  validates :password, :presence => true,
                       :confirmation => true,
                       :password_format => true,
                       :on => :create
  validates :password, :confirmation => true,
                       :password_format => true,
                       :allow_blank => true,
                       :on => :update
end
