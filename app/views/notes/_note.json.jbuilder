json.extract! note, :id, :title, :name, :nickname, :feeling, :message, :created_at, :updated_at
json.url note_url(note, format: :json)
