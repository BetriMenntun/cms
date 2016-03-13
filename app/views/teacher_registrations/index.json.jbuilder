json.array!(@teacher_registrations) do |teacher_registration|
  json.extract! teacher_registration, :id, :user_id, :seminar_id
  json.url teacher_registration_url(teacher_registration, format: :json)
end
