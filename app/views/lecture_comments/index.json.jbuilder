json.array!(@lecture_comments) do |lecture_comment|
  json.extract! lecture_comment, :id, :body, :lecture_id, :user_id
  json.url lecture_comment_url(lecture_comment, format: :json)
end
