class Alimento < ApplicationRecord
  has_many :subalimentos
  has_many :dietas
end
