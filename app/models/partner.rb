class Partner < ApplicationRecord
  belongs_to :service
  has_many :bookings
  has_many :users, through: :bookings
  validates :description, presence: true
end
