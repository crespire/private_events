json.extract! event, :id, :name, :event_date, :open_join, :max_guests, :created_at, :updated_at
json.url event_url(event, format: :json)
