json.array!(@users) do |user|
  json.extract! user, :id, :firstName, :lastName, :img, :facebook
  json.url user_url(user, format: :json)
end
