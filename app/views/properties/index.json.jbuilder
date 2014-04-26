json.array!(@properties) do |property|
  json.extract! property, :address, :rent, :description
  json.url property_url(property, format: :json)
end