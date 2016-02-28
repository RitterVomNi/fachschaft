# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create(teamName: "Erstsemester")
Team.create(teamName: "Party")
Team.create(teamName: "Sponsoring")
Team.create(teamName: "Veranstaltungen")
Team.create(teamName: "Klausuren")
Team.create(teamName: "Gremienarbeit")
Team.create(teamName: "Nachzügler")

User.create(facebook: "https://www.facebook.com/profile.php?id=100005615115122", firstName: "Malte", lastName: "Evers", email: "a@fh-muenster.de", password: "12345678", team_id: "1", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/profile.php?id=100005615115122", firstName: "Matthias", lastName: "Heinen", email: "heinen.m@fh-muenster.de", password: "12345678", team_id: "2", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/malte.la.7?fref=ts", firstName: "Malte", lastName: "Lange", email: "malte@fh-muenster.de" ,password: "12345678", team_id: "3", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/myles.sutholt?fref=ts", firstName: "Myles", lastName: "Sutholt", email: "myles@fh-muenster.de" ,password: "12345678", team_id: "4", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/groups/649018005179998/?fref=ts", firstName: "Günther", lastName: "Netzer", email: "mh152235@fh-muenster.de" ,password: "12345678", team_id: "5", studiengang: "BWL")
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Fin", lastName: "the Human", email: "fin@fh-muenster.de" ,password: "12345678", team_id: "6", studiengang: "CALA")

User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Jake", lastName: "the Dog", email: "jake@fh-muenster.de" ,password: "12345678", studiengang: "EBP")

Role.create(name: "Admin")
Role.create(name: "Manager")
Role.create(name: "Fachschaft")
Role.create(name: "User")

Resume.create(name: "Kapstadt", attachment: File.open(File.join(Rails.root, 'kapstadt.pdf')))
Resume.create(name: "Portsmouth", attachment: File.open(File.join(Rails.root, 'portsmouth.pdf')))
Resume.create(name: "Santiago de Chile", attachment: File.open(File.join(Rails.root, 'santiago_de_chile.pdf')))
Resume.create(name: "Universidad de Sevilla", attachment: File.open(File.join(Rails.root, 'universidad_de_sevilla.pdf')))
Resume.create(name: "Universität von Sevillia", attachment: File.open(File.join(Rails.root, 'universität_von_sevilla.pdf')))


Content.create(title: "No 1", content: "Lorem Ipsum Blablabla", user_id: "1", team_id: "1" )
Content.create(title: "No 2", content: "Quit custodiet undsoweidda", user_id: "2" , team_id: "2")
Content.create(title: "No 3", content: "Alea iacta est aha mhmm", user_id: "3", team_id: "3" )
Content.create(title: "No 4", content: "I should tell ya momma on you", user_id: "4", team_id: "4" )
Content.create(title: "No 5", content: "Praise the Lord", user_id: "5", team_id: "5" )
Content.create(title: "No 6", content: "Wer hat die Kokosnuss", user_id: "6" , team_id: "6")
Content.create(title: "No 7", content: "Et tu, Brute?", user_id: "7" )
Content.create(title: "No 8", content: "Asinus stupidus est", user_id: "1" , team_id: "1")


Content.create(title: "No 9", content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "1", team_id: "1" )
Content.create(title: "No 10", content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "2" , team_id: "2")
Content.create(title: "No 11", content: "Alea iacta est aha mhmm Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "3", team_id: "3" )
Content.create(title: "No 12", content: "I should tell ya momma on you Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "4", team_id: "4")
Content.create(title: "No 13", content: "Praise the Lord Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "5", team_id: "5" )
Content.create(title: "No 14", content: "Wer hat die Kokosnuss Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "6" , team_id: "6")
Content.create(title: "No 15", content: "Et tu, Brute? Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "7" )
Content.create(title: "No 16", content: "Asinus stupidus est Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "1" , team_id: "1")

Appointment.create(content: "Freitag den 11.03.2016, &nbsp;&nbsp; Uhrzeit: 15:00", title: "1. Termin Nachzüglerbetreuung")
Appointment.create(content: "Montag den 14.03.2016, &nbsp;&nbsp; Uhrzeit: 18:00", title: "2. Termin Nachzüglerbetreuung")
Appointment.create(content: "Montags um 18:15", title: "Sitzungszeit Fachschaft")
Appointment.create(content: "09.03.16 - 11.03.16", title: "Termin O-Woche")
Appointment.create(content: "18.03.16 - 20.03.16", title: "Termin Erstifahrt")
Appointment.create(content: "Gewählt wird der Senat, der Fachbereichsrat und die Gleichstellungsbeauftragte", title: "Was für Wahlen?")
Appointment.create(content: "Wird noch festgelegt", title: "Termin Wahlen")
Appointment.create(content: "Jonathan Peters", title: "1. Vorstand")
Appointment.create(content: "Matthias Heinen", title: "2. Vorstand")

