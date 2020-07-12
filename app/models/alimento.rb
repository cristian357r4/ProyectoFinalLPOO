class Alimento < ApplicationRecord
  has_many :subalimentos
  has_many :dietas
  has_one_attached :image
end
