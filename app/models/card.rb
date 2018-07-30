class Card < ApplicationRecord
  validates :title, presence: true
  has_many :attachments, through: :attachment_cards
  has_many :comments
  belongs_to :list
end
