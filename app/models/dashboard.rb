# dashboard model
class Dashboard < ApplicationRecord
  validates :title, presence: true
  validates :user_id, presence: true

  enum policy: %I[
    public
    private
  ]
end
