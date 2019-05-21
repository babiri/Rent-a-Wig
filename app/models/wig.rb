class Wig < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  validates :color, presence: true
  validates :size, presence: true
  validates :style, presence: true
  validates :name, presence: true
  validates :price, presence: true
end
