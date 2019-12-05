json.extract! service_price, :id, :basic_price, :bussiness_price_in_percentage, :first_class_price_in_percentage, :flight_id, :created_at, :updated_at
json.url service_price_url(service_price, format: :json)
