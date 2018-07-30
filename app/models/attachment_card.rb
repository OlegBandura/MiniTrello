class AttachmentCard < ApplicationRecord
  has_many :cards, through: :attachment_cards
end
