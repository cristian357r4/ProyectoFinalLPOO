class Infousuario < ApplicationRecord
  validate :persona_id, presence: true
  validate :peso, presence: true
  validate :talla, presence: true
  validate :imc, presence: true
  validate :porcentage_grasa, presence: true
  validate :fecha_registro, presence: true
  validate :edad, presence: true
end
