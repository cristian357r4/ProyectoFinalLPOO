class Paciente < ApplicationRecord
  belongs_to :persona
  has_many :dietas
  has_many :plansuplementos
  #tiene el persona_id que hace referencia a la tabla persona
  # accepts_nested_attributes_for :persona, allow_destroy: true
end
