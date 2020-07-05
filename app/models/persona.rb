# frozen_string_literal: true

class Persona < ApplicationRecord
  # item en ejemplo
  # attr_accessor :id_persona ,:nombre, :a_paterno, :a_materno, :correo, :sexo, :telefono
  has_one :nutriologo
  accepts_nested_attributes_for :nutriologo

  validates :nombre, :a_materno, :a_paterno, presence: {
    message: 'Este campo es requerido'
  }, length: { minimum: 2, maximum: 20 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :correo, presence: {
    message: 'Este campo es requerido'
  }, length: { maximum: 105 },
                     uniqueness: {
                       case_sensitive: false,
                       message: 'El correo introducido ya ha sido registrado'
                     },
                     format: { with: VALID_EMAIL_REGEX,
                               message: 'El correo no es valido' }

  # accepts_nested_attributes_for :nutriologos
end
