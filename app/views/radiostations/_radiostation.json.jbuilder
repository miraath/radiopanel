json.extract! radiostation, :id, :streaming_url, :name, :logo, :description, :online, :live_info
json.url radiostation_url(radiostation, format: :json)
