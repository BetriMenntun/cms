# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Lecture.find_or_create_by(
  title: "titill",
  url: "lala"
)

10.times do |s|

  Seminar.find_or_create_by(
    name: "Seminar #{s}",
    active: true,
    visible: true,
  )
end


Usertype.find_or_create_by(name: "Teacher");
Usertype.find_or_create_by(name: "Student");
Usertype.find_or_create_by(name: "Parent");

5.times do |u|
  User.find_or_create_by(
    username: "user#{u}",
    email: "user#{u}@lala.lal",
    profile: "aaa",
    bio: "aasdfasf",
    active: true,
    usertype: Usertype.offset(rand(Usertype.count)).first
  )
end

12.times do |s|
  StudentRegistration.create(
    user:User.offset(rand(User.count)).first,
    seminar:Seminar.offset(rand(Seminar.count)).first
  )
end
