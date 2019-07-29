class Review < ApplicationRecord
  belongs_to :user
  belongs_to :partner
  validates :partner_id, uniqueness: { scope: :user_id, message: "You've reviewed this Service partner!" }
end
