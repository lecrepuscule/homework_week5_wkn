class User < ActiveRecord::Base
  has_many :journeys, dependent: :destroy
  has_many :vehicles, through: :journeys
  has_many :drivers, through: :journeys
end
