class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :partner
end
