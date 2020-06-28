# frozen_string_literal: true
class Nutriologo < ApplicationRecord
  has_one :persona, inverse_of: :nutriologo, autosave: true
  accepts_nested_attributes_for :persona, allow_destroy: true

  has_secure_password


  validates :login, length: {minimum: 4, maximum: 10},
            uniqueness: {
                case_sensitive: false,
                message: ' Usuario ya exite elija uno distinto'
            }


end