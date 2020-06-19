class Persona < ApplicationRecord
  # item en ejemplo
  attr_accessor :id_persona ,:nombre, :a_paterno, :a_materno, :correo, :sexo, :telefono, :nutriologos_atributes
  validates :nombre, :a_materno, :a_paterno, presence: {
    message: "Este campo es requerido"
  }, length: { minimum: 5, maximum: 20 }


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :correo, presence: {
    message: "Este campo es requerido"
  }, length: { maximum: 105 },
                     uniqueness: {
                       case_sensitive: false,
                       message: "El correo introducido ya ha sido registrado"
                     },
                     format: { with: VALID_EMAIL_REGEX }


  accepts_nested_attributes_for :nutriologos
end
