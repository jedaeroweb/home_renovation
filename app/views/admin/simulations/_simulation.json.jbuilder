json.extract! simulation, :id, :title, :enable, :created_at, :updated_at
json.url admin_simulation_url(simulation, format: :json)
