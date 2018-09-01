json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :phone, :password, :profile_url
  json.url user_url(user, format: :json)
end
