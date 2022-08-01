class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :price_per_night, numericality: { only_integer: true }
  validates :number_of_guests, numericality: { only_integer: true, :in => 0..5 }
end
