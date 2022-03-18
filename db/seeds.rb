# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ball = Ball.new({name: "Basketball", size: "M", price: 20})
ball.save

ball = Ball.new({name: "Baseball", size: "S", price: 5})
ball.save

ball = Ball.new({name: "Football", size: "S", price: 12})
ball.save

ball = Ball.new({name: "Tennis Ball", size: "S", price: 3})
ball.save

ball = Ball.new({name: "Medicine Ball", size: "L", price: 35})
ball.save