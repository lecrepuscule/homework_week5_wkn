class User < ActiveRecord::Base
  has_many :journeys, dependent: :destroy
  has_many :vehicles, through: :journeys
  has_many :drivers, through: :journeys

  before_save { self.email = email.downcase }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  has_secure_password
end
