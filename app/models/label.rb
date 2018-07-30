class Label < ApplicationRecord
  validates :color, presence: true

  has_many :dashboards, through: :dashboard_labels
end
