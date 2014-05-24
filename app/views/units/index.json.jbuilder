json.array!(@units) do |unit|
  json.extract! unit, :unit, :bedrooms, :bathrooms, :rent, :sqft, :property_id
  json.url unit_url(unit, format: :json)
end