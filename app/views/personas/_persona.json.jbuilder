json.extract! persona, :id, :nombre, :a_paterno, :a_materno, :sexo, :telefono, :correo, :created_at, :updated_at
json.url persona_url(persona, format: :json)
