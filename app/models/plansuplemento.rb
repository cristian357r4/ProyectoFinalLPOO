class Plansuplemento < ApplicationRecord
  belongs_to :paciente
  belongs_to :suplemento
end
