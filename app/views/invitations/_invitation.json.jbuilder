json.extract! invitation, :id, :event_id, :attendee_id, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
