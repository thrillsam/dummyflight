json.extract! flight, :id, :name, :origin_id, :destination_id, :pnr, :airplane_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
