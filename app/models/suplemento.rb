class Suplemento < ApplicationRecord
  has_many :plansuplementos
  has_one_attached :image
end
