class TeacherRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :seminar
end
