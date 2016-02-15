json.array!(@usertypes) do |usertype|
  json.extract! usertype, :id, :name
  json.url usertype_url(usertype, format: :json)
end
