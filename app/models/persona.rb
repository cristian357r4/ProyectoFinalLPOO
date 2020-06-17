class Persona < ApplicationRecord
  validate :nombre, presence: true, length: { minimum: 5, maximum: 50 }
  validate :a_paterno, presence: true, length: { minimum: 5, maximum: 50 }
  validate :a_materno, presence: true, length: { minimum: 5, maximum: 50 }
  validate :sexo, presence: true
  validate :correo, presence: true, length: { minimum: 5, maximum: 50 }

end