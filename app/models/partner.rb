class Partner < ApplicationRecord
  belongs_to :service
  has_many :bookings
  has_many :users, through: :bookings
end
