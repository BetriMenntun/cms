# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
user = User.create!( username:  'jd',   bio:  'Lone ranger',  email: 'jd@gmail.com',  password: 'password', password_confirmation: 'password', active: true, profile: 'profile url' )
user = User.create!( username:  'turk', bio:  'Some bio ',  email:  'turk@gmail.com', password: 'password', password_confirmation: 'password', active: true, profile: 'profile url' )
user = User.create!( username:  'test', bio:  'Some bio ',  email:  'test@gmail.com', password: 'password', password_confirmation: 'password', active: true, profile: 'profile url' )

10.times do |l|
  Lecture.find_or_create_by(
    title: "Lecture #{l}",
    url: "lecture #{l} url "
  )
end

10.times do |s|
  Seminar.find_or_create_by(
    name: "Seminar #{s}",
    active: true,
    visible: true,
  )
end

12.times do |s|
  StudentRegistration.create(
    user:User.offset(rand(User.count)).first,
    seminar:Seminar.offset(rand(Seminar.count)).first
  )
end
12.times do |s|
  TeacherRegistration.create(
    user:User.offset(rand(User.count)).first,
    seminar:Seminar.offset(rand(Seminar.count)).first
  )
end
