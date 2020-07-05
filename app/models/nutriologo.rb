# frozen_string_literal: true

class Nutriologo < ApplicationRecord
  belongs_to :persona
  # tiene el persona_id referencia a la tabla persona
  # persona_id es foreign_key

  has_secure_password
  validates :cedula_profesional, length: { is: 10, message: 'Error faltan algunos caracteres verifique los datos' },
                                 uniqueness: {
                                   message: 'Esta la cedula ya fue registrada'

                                 }
  validates :login, length: { minimum: 3, maximum: 10 },
                    uniqueness: {
                      case_sensitive: false,
                      message: ' Usuario ya exite elija uno distinto'
                    }
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
