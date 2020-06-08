# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rainbow_quiz = Quiz.create(name: "Rainbow Quiz", category: "random-knowledge")
Question.create(content: "What is the first color of the Rainbow?", answer: "red", quiz_id: 1)
Question.create(content: "What is the second color of the Rainbow?", answer: "orange", quiz_id: 1)
Question.create(content: "What is the third color of the Rainbow?", answer: "yellow", quiz_id: 1)
Question.create(content: "What is the fourth color of the Rainbow?", answer: "green", quiz_id: 1)
Question.create(content: "What is the fifth color of the Rainbow?", answer: "blue", quiz_id: 1)
Question.create(content: "What is the sixth color of the Rainbow?", answer: "indigo", quiz_id: 1)
Question.create(content: "What is the seventh color of the Rainbow?", answer: "violet", quiz_id: 1)
