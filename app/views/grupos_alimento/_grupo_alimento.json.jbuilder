json.extract! grupo_alimento, :id, :nombre, :ingrediente, :cantidad, :created_at, :updated_at
json.url grupo_alimento_url(grupo_alimento, format: :json)
