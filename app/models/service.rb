class Service < ApplicationRecord
  has_many :partners
  has_one_attached :avatar
end
