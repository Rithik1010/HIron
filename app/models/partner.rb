class Partner < ApplicationRecord
  belongs_to :service
  has_many :feedbacks
  has_many :users, through: :feedbacks
end
