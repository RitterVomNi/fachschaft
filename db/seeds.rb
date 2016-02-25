# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(facebook: "https://www.facebook.com/profile.php?id=100005615115122", firstName: "Malte", lastName: "Evers", email: "a@fh-muenster.de", password: "12345678", team_id: "1", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/profile.php?id=100005615115122", firstName: "Matthias", lastName: "Heinen", email: "heinen.m@fh-muenster.de", password: "12345678", team_id: "1", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/malte.la.7?fref=ts", firstName: "Malte", lastName: "Lange", email: "malte@fh-muenster.de" ,password: "12345678", team_id: "6", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/myles.sutholt?fref=ts", firstName: "Myles", lastName: "Sutholt", email: "myles@fh-muenster.de" ,password: "12345678", team_id: "6", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/groups/649018005179998/?fref=ts", firstName: "Günther", lastName: "Netzer", email: "mh152235@fh-muenster.de" ,password: "12345678", studiengang: "BWL")
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Fin", lastName: "the Human", email: "fin@fh-muenster.ti" ,password: "12345678", studiengang: "CALA")
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Jake", lastName: "the Dog", email: "jake@fh-muenster.ti" ,password: "12345678", studiengang: "EBP")

Role.create(name: "Admin")
Role.create(name: "Manager")
Role.create(name: "Fachschaft")
Role.create(name: "User")

Resume.create(name: "Kapstadt", attachment: File.open(File.join(Rails.root, 'kapstadt.pdf')))
Resume.create(name: "Portsmouth", attachment: File.open(File.join(Rails.root, 'portsmouth.pdf')))
Resume.create(name: "Santiago de Chile", attachment: File.open(File.join(Rails.root, 'santiago_de_chile.pdf')))
Resume.create(name: "Universidad de Sevilla", attachment: File.open(File.join(Rails.root, 'universidad_de_sevilla.pdf')))
Resume.create(name: "Universität von Sevillia", attachment: File.open(File.join(Rails.root, 'universität_von_sevilla.pdf')))

Team.create(teamName: "Erstsemester")
Team.create(teamName: "Party")
Team.create(teamName: "Sponsoring")
Team.create(teamName: "Veranstaltungen")
Team.create(teamName: "Klausuren")
Team.create(teamName: "Gremienarbeit")
Team.create(teamName: "Nachzügler")

