# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
require "date"

Admin.create(email: "snu@likelion.org", password: "snulion2017", password_confirmation: "snulion2017")

# Week Seed !!
start_date = DateTime.new(2017,3,19)
for i in 1..16
  Week.create(start_date: start_date, end_date: start_date + 6.days)
  start_date += 7.days
end

# example User seed !!
User.create(name: "운영진", email: "snu@likelion.org", password: "snulion2017", password_confirmation: "snulion2017")
User.create(name: "태완", email: "snu1@likelion.org", password: "snulion2016", password_confirmation: "snulion2016")


# 1st week Seminar seed
Seminar.create(week_id: "1", title: "웹의 기초", document: "http://naver.com")

# 1st week Homework seed
Homework.create(week_id: "1", title: "Codecademy HTML CSS part 1")
Homework.create(week_id: "1", title: "멋사4기 1주차 강의")

puts "seed 완료" 
