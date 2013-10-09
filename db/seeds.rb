# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quizzes = Quiz.create([{ title: 'Pub Quiz' },
                       { title: 'Health Quiz' }])

users = User.create({ first_name: 'Bob',
					  last_name: 'Job',
					  email: 'bob@job.com',
					  password: 'password',
					  password_confirmation: 'password' })