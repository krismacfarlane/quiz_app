# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all
Instructor.destroy_all
Cohort.destroy_all
Quiz.destroy_all
Question.destroy_all
Answer.destroy_all

Instructor.create([
  {name: "Phil", email: "phil@gmail.com", password: "cats"},
  {name: "PJ", email: "pj@gmail.com", password: "cats"}
])

phil = Instructor.all.first

Cohort.create([
  {name: "godot", instructor: phil, room: "3E", producer: "Sarah"}
])

godot = Cohort.all.first

Student.create([
  {name: "Bob", email: "bob@gmail.com", password: "cats"},
  {name: "Billy", email: "billy@gmail.com", password: "cats"}
])

bob, billy = * Student.all

Quiz.create([
  {name: "Quiz 1", grade: 0, has_grade: false, student: bob, cohort: godot},
  {name: "Quiz 2", grade: 0, has_grade: false, student: billy, cohort: godot}
])

quiz1 = Quiz.all.first

Question.create([
  {quiz: quiz1, content: "What is the best color?", got_right: false, points: 3}
])

question1 = Question.all.first

Answer.create([
  {question: question1, content: "green", is_picked: false}
])
