json.extract! booking, :id, :user_id, :bike_id, :begin, :end, :message, :confirmation, :created_at, :updated_at
json.url booking_url(booking, format: :json)