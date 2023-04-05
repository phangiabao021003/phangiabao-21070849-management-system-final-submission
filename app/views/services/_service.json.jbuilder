json.extract! service, :id, :ServiceName, :ServiceNumber, :Cost, :ClientID_id, :Phone_id, :created_at, :updated_at
json.url service_url(service, format: :json)
