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
  {name: "PJ", email: "pj@gmail.com", password: "cats"},
  {name: "Travis", email:"travis@gmail.com", password:"cats"}

])

phil = Instructor.all.first

Cohort.create([
  {name: "godot", instructor: phil, room: "3E", producer: "Sarah"},
  {name: "peach", instructor: pj, room: "2A", producer: "Jessica"},
  {name: "blossom",instructor:phil, room: "4B", producer: "Sarah"},
  {name: "reed",   instructor: travis, room: "3C", producer: "Jessica"}
])

godot = Cohort.all.first

Student.create([
  {name: "Bob", email: "bob@gmail.com", password: "cats"},
  {name: "Billy", email: "billy@gmail.com", password: "cats"},
  {name: "David", email: "david@gmail.com", password: "cats"},
  {name: "Mike", email: "mike@gmail.com", password: "cats"},
  {name: "Kisten", email: "kristen@gmail.com", password: "cats"},
  {name: "Jeff", email: "jeff@gmail.com", password: "cats"},
  {name: "Diego", email: "diego@gmail.com", password: "cats"},
  {name: "Jennifer", email: "jenn@gmail.com",password: "cats"},
  {name: "Frank",email: "frank@gmail.com", password: "cats"}

])

bob, billy = * Student.all

Quiz.create([
  {name: "Quiz 1", grade: 0, has_grade: false, student: bob, cohort: godot},
  {name: "Quiz 2", grade: 0, has_grade: false, student: billy, cohort: godot},
  {name: "quiz 3", grade: 0, has_grade: false, student: jennifer, cohort:blossom},
  {name: "quiz 4", grade: 0, has_grade: false, student: diego, cohort:reed},
  {name: "quiz 5", grade: 0, has_grade: false, student: kristen, cohort:peach},
  {name: "quiz 6", grade: 0, has_grade: false, student: mike, cohort:blossom},
  {name: "quiz 7", grade: 0, has_grade: false, student: david, cohort:reed},
  {name: "quiz 8", grade: 0, has_grade: false, student: jeff, cohort:peach},
  {name: "quiz 9", grade: 0, has_grade: false, student: frank, cohort:reed}


])

quiz1 = Quiz.all.first

Question.create([
  {quiz: quiz1, content: "What is the best color?", got_right: false, points: 3},
  {quiz: quiz2, content: "Is the glass half full or half empty?", got_right: false, points: 3},
  {quiz: quiz3, content: "Is reality tv educational?", got_right: false, points: 3},
   {quiz: quiz4, content: "Would Maddie grow to become the next trash tv star?", got_right: false, points: 3},
    {quiz: quiz5, content: "What is your favorite animal?", got_right: false, points: 3},
   {quiz: quiz6, content: "Is OJ Simpson really innocent?", got_right: false, points: 3},
    {quiz: quiz7, content: "What is your favorite cuisine?", got_right: false, points: 3}







])

question1 = Question.all.first

Answer.create([
  {question: question1, content: "green", is_picked: false},
  {question: question2, content: "half full", is_picked: false},
  {question: question3, content: "absolutely", is_picked: false},
  {question: question4, content: "she does has what its needed", is_picked: false},
  {question: question5, content: "lion", is_picked: false},
  {question: question6, content: "the jury its still out on that one", is_picked: false},
  {question: question7, content: "indian", is_picked: false}
])
