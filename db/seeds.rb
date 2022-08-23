# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Pokemon.create(name: "Wobbuffet", locationX: 1439, locationY: 170, offset_x: 16, offset_y: 20)
Pokemon.create(name: "Slowking", locationX: 1003, locationY: 577, offset_x: 13, offset_y: 19)
Pokemon.create(name: "Pichu", locationX: 496, locationY: 593, offset_x: 12, offset_y: 15)

t1 = Timer.create(start_time: Time.new(2022, 8, 22, 10, 10, 10), end_time: Time.new(2022, 8, 22, 10, 10, 20))
t2 = Timer.create(start_time: Time.new(2022, 8, 22, 10, 11, 10), end_time: Time.new(2022, 8, 22, 10, 11, 30))
t3 = Timer.create(start_time: Time.new(2022, 8, 22, 10, 12, 10), end_time: Time.new(2022, 8, 22, 10, 12, 40))

Ranking.create(name: "Ash Ketchum", duration: "00:10", timer: t1)
Ranking.create(name: "Misty", duration: "00:20", timer: t2)
Ranking.create(name: "Brock", duration: "00:30", timer: t3)