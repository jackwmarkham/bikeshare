json.extract! bike, :id, :profile_id, :description, :gears, :created_at, :updated_at
json.url bike_url(bike, format: :json)