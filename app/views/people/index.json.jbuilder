json.array!(@people) do |person|
  json.extract! person, :id, :email, :password
  json.url person_url(person, format: :json)
end
