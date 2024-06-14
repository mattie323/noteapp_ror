json.extract! note, :id, :title, :body, :name, :created_at, :updated_at
json.url note_url(note, format: :json)
