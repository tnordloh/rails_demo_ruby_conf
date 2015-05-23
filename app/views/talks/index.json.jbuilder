json.array!(@talks) do |talk|
  json.extract! talk, :id, :title, :name, :email, :abstract, :notes, :bio, :track_id
  json.url talk_url(talk, format: :json)
end
