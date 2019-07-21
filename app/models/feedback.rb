class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :partner
  validates :user_id, presence: true
  validates :partner_id, presence: true
end
