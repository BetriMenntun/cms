json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :profile, :bio, :active, :usertype_id
  json.url user_url(user, format: :json)
end
