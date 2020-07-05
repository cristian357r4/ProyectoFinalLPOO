class Paciente < ApplicationRecord
  belongs_to :persona
  #tiene el persona_id que hace referencia a la tabla persona

  accepts_nested_attributes_for :persona
end
