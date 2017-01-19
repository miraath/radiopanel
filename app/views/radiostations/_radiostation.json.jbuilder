json.extract! radiostation, :id, :streaming_url, :name, :logo, :description, :online, :live_info, :language, :slug, :weigth
json.url radiostation_url(radiostation, format: :json)
