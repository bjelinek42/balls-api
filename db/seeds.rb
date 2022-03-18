# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

supplier = Supplier.new({name: "Dicks", email: "info@icks.com", phone: "203-765-3583"})
supplier.save

supplier = Supplier.new({name: "Scheels", email: "info@scheels.com", phone: "553-752-2345"})
supplier.save

supplier = Supplier.new({name: "Big 5", email: "info@big5.com", phone: "125-253-2532"})
supplier.save