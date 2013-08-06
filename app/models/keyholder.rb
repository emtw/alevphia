class Keyholder < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  attr_accessible :first_name, :house, :keyholder, :last_name, :postcode, :user_id, :username, :password, :password_confirmation
  
  belongs_to :user
end
