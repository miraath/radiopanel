json.extract! radiostation, :id, :streaming_url, :name, :logo, :description, :active, :online, :created_at, :updated_at
json.url radiostation_url(radiostation, format: :json)