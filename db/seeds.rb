# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(facebook: "https://www.facebook.com/profile.php?id=100005615115122", firstName: "Matthias", lastName: "Heinen")
User.create(facebook: "https://www.facebook.com/malte.la.7?fref=ts", firstName: "Malte", lastName: "Lange")
User.create(facebook: "https://www.facebook.com/myles.sutholt?fref=ts", firstName: "Myles", lastName: "Sutholt")