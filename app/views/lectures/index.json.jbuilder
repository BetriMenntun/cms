json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :title, :url
  json.url lecture_url(lecture, format: :json)
end
