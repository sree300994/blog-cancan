# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: "admin")
Role.create(name: "author")
Role.create(name: "moderator")
Role.create(name: "user")

u = User.new
u.email = "admin@gmail.com"
u.password = "123456"
u.save

p = Permission.new
p.role_id = 1
p.user_id = 1
p.save

author = User.new
author.email = "author@gmail.com"
author.password = "123456"
author.save
author.roles.push(Role.second)

moderator = User.new
moderator.email = "mod1@gmail.com"
moderator.password = "123456"
moderator.save
moderator.roles.push(Role.third)

user = User.new
user.email = "user1@gmail.com"
user.password = "123456"
user.save
user.roles.push(Role.last)



