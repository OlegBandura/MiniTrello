class Comment < ApplicationRecord
  validates :card_id, presence: true
end
