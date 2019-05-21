class Wig < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :color, presence: true, inclusion: { in: ["blond", "black", "brown", "red", "yellow", "pink", "blue", "green", "other"]}
  validates :size, presence: true, inclusion: { in: ["short", "medium", "long"] }
  validates :style, presence: true, inclusion: { in: ["curly", "straigth", "afro", "wavy", "other"] }
  validates :name, presence: true
  validates :price, presence: true
end
