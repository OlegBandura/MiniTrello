class User < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true
  validates :username, presence: true

  has_many :comments
  has_many :dashboards
end
