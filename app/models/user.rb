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
  has_one :message_board
  has_many :messages, through: :message_board, dependent: :destroy
  
  validates :username, :length => { :minimum => 4, :maximum => 30 }, :presence => true, :uniqueness => true, :username_format => true
  validates :first_name, :length => { :minimum => 2, :maximum => 40 }, :presence => true, :name_format => true
  validates :last_name, :length => { :minimum => 2, :maximum => 40 }, :presence => true, :name_format => true
  validates :email, :presence => true, :email_format => true
  validate :at_least_18
  validates :date_of_birth, :presence => true
  validates :gender, :inclusion => { :in => ["", "Male", "Female"] }
  validates :line_1, :presence => true
  validates :town, :presence => true
  validates :county, :inclusion => { :in => COUNTIES }
  validates :postcode, :presence => true, :postcode_format => true
  validates :password, :presence => true,
                       :confirmation => true,
                       :password_format => true,
                       :on => :create
  validates :password, :confirmation => true,
                       :password_format => true,
                       :allow_blank => true,
                       :on => :update
  
  
  def at_least_18
    if self.date_of_birth
      errors.add(:date_of_birth, "You must be 18 years or older to use this service.") if
      self.date_of_birth > 18.years.ago.to_date
    end
  end
  
  def postcode=(value)
    write_attribute(:postcode, value.upcase)
  end
  
end
