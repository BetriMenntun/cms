json.array!(@seminars) do |seminar|
  json.extract! seminar, :id, :name, :active, :visible
  json.url seminar_url(seminar, format: :json)
end
