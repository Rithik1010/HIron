class Partner < ApplicationRecord
  belongs_to :service
  has_many :bookings
  has_many :users, through: :bookings
  has_many :feedbacks
  has_many :users, through: :feedbacks
  validates :description, presence: true
end
