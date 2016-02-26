# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(facebook: "https://www.facebook.com/profile.php?id=100005615115122", firstName: "Matthias", lastName: "Heinen", email: "admin@fh-muenster.de", password: "12345678", team_id: "1", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/profile.php?id=100005615115122", firstName: "Malte", lastName: "Evers", email: "malte@fh-muenster.de", password: "12345678", team_id: "1", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/malte.la.7?fref=ts", firstName: "Malte", lastName: "Lange", email: "malte@fh-muenster.de" ,password: "12345678", team_id: "6", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/myles.sutholt?fref=ts", firstName: "Myles", lastName: "Sutholt", email: "myles@fh-muenster.de" ,password: "12345678", team_id: "6", studiengang: "BA-Wirtschaftsinformatik")
User.create(facebook: "https://www.facebook.com/groups/649018005179998/?fref=ts", firstName: "Günther", lastName: "Netzer", email: "mh152235@fh-muenster.de" ,password: "12345678", studiengang: "BWL")
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Fin", lastName: "the Human", email: "fin@fh-muenster.de" ,password: "12345678", studiengang: "CALA")
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


Team.create(teamName: "Erstsemester")
Team.create(teamName: "Party")
Team.create(teamName: "Sponsoring")
Team.create(teamName: "Veranstaltungen")
Team.create(teamName: "Klausuren")
Team.create(teamName: "Gremienarbeit")
Team.create(teamName: "Nachzügler")


Content.create(title: "No 1", content: "Lorem Ipsum Blablabla", created_at: '01.01.2010', updated_at: 'nil', user_id: "1" )
Content.create(title: "No 2", content: "Quit custodiet undsoweidda", created_at: '02.02.2010', updated_at: 'nil', user_id: "2" )
Content.create(title: "No 3", content: "Alea iacta est aha mhmm", created_at: '03.03.2010', updated_at: 'nil', user_id: "3" )
Content.create(title: "No 4", content: "I should tell ya momma on you", created_at: '04.04.2010', updated_at: 'nil', user_id: "4" )
Content.create(title: "No 5", content: "Praise the Lord", created_at: '05.05.2010', updated_at: 'nil', user_id: "5" )
Content.create(title: "No 6", content: "Wer hat die Kokosnuss", created_at: '06.06.2010', updated_at: 'nil', user_id: "6" )
Content.create(title: "No 7", content: "Et tu, Brute?", created_at: '07.07.2010', updated_at: 'nil', user_id: "1" )
Content.create(title: "No 8", content: "Asinus stupidus est", created_at: '08.08.2010', updated_at: 'nil', user_id: "2" )


Appointment.create(content: "Freitag den 11.03.2016, &nbsp;&nbsp; Uhrzeit: 15:00", title: "1. Termin Nachzüglerbetreuung")
Appointment.create(content: "Montag den 14.03.2016, &nbsp;&nbsp; Uhrzeit: 18:00", title: "2. Termin Nachzüglerbetreuung")
Appointment.create(content: "Montags um 18:15", title: "Sitzungszeit Fachschaft")

