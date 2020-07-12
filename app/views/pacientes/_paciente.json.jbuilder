json.extract! paciente, :id, :persona_id, :peso, :talla, :imc, :porcentage_grasa, :birthdate, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
