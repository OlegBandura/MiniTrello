# dashboard model
class Dashboard < ApplicationRecord
  validates :title, presence: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :card
  has_many :labels, through: :dashboard_labels

  enum policy: %I[
    public
    private
  ]
end
