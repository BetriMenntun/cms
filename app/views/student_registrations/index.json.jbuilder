json.array!(@student_registrations) do |student_registration|
  json.extract! student_registration, :id, :user_id, :seminar_id
  json.url student_registration_url(student_registration, format: :json)
end
