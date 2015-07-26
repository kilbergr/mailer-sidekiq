# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(username: "rkpuppy", first_name: "Rebecca", last_name: "Kilberg", email: "rekilberg@gmail.com", is_admin: true)
u2 = User.create(username: "Dom", first_name: "Dom", last_name: "Smith", email: "dsmith@smith.com", is_admin:false)
u3 = User.create(username: "Lindsay", first_name:"Lindsay", last_name: "Elia", email: "lindsay@gmail.com", is_admin: false)

project = Group.create(name: "Project Group")
roommate = Group.create(name: "Roommate group")

goals = List.create(name: "Project Goals")
strengths = List.create(name: "Individual Strengths")

u1.groups << project
u2.groups << project
u3.groups << project
u1.groups << roommate

project.lists << goals
project.lists << strengths