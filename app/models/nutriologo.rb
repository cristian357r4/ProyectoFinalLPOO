# frozen_string_literal: true
class Nutriologo < ApplicationRecord
  before_save { self.login = login.downcase }
  belongs_to :persona
  # tiene el persona_id referencia a la tabla persona
  # persona_id es foreign_key

  validates :cedula_profesional, uniqueness: {
      message: 'Esta la cedula ya fue registrada'

  }, length: {is: 10, message: 'La cedula profesional debe tener 10 digitos'}

  validates_uniqueness_of :login, :case_sensitive => false, :message => 'El usuario ya existe elija otro nombre'
  # validates :login, uniqueness: {
  #     case_sensitive: false,
  #     message: ' Usuario ya exite elija uno distinto'
  # }, length: {minimum: 3, maximum: 50}


  has_secure_password
end

# create table nutriologos
# (
# id bigint auto_increment primary key,
# persona_id         bigint       null, esta es la llave foranea
# cedula_profesional varchar(255) null,
# login varchar(255) null,
# password_digest    varchar(255) null,
# constraint index_nutriologos_on_persona_id
# unique (persona_id),
#        constraint fk_rails_8baf6f6618
# foreign key (persona_id) references personas (id)
# );
