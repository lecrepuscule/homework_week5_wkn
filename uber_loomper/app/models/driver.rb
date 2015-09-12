class Driver < ActiveRecord::Base
  has_many :journeys, dependent: :destroy
  has_many :users, through: :journeys
  has_many :vehicles, through: :journeys
end
