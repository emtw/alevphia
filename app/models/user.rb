class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  attr_accessible :contact_number, :county, :date_of_birth, :first_name, :gender, :guest_id, :keyholder_id, :last_name, :line_1, :line_2, :line_3, :middle_names, :postcode, :town,
                  :user, :username, :password, :password_confirmation, :email
  
  has_one :keyholder, dependent: :destroy
  has_one :guest, dependent: :destroy
  has_one :funeral, dependent: :destroy
  has_one :timeline, dependent: :destroy
  accepts_nested_attributes_for :timeline
  has_many :events, through: :timeline, dependent: :destroy
  
end
