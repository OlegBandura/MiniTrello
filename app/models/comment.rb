class Comment < ApplicationRecord
  validates :card_id, presence: true

  belongs_to :user
end
