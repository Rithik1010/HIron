class Service < ApplicationRecord
  has_many :partners
  has_many :bookings
  has_many :users, through: :bookings
end
