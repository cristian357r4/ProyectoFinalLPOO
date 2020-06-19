class Paciente < ApplicationRecord
  belongs_to :persona
  accepts_nested_attributes_for :persona
end
