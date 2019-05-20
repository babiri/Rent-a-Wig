class Wig < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :color, presence: true
  validates :size, presence: true
  validates :style, presence: true
  validates :name, presence: true
  validates :price, presence: true
end
