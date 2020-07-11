class Dieta < ApplicationRecord
  belongs_to :paciente
  belongs_to :alimento
  belongs_to :subalimento
end
