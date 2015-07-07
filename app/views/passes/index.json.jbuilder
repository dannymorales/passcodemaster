json.array!(@passes) do |pass|
  json.extract! pass, :id, :name, :username, :password_salt, :notes, :active, :user_id
  json.url pass_url(pass, format: :json)
end
