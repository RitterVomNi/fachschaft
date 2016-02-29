# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: "Admin")
Role.create(name: "Manager")
Role.create(name: "Fachschaft")
Role.create(name: "User")

Team.create(teamName: "Erstsemester", user_id: "1")
Team.create(teamName: "Party", user_id: "1")
Team.create(teamName: "Sponsoring", user_id: "1")
Team.create(teamName: "Veranstaltungen", user_id: "1")
Team.create(teamName: "Klausuren", user_id: "1")
Team.create(teamName: "Gremienarbeit", user_id: "1")
Team.create(teamName: "Nachzügler", user_id: "1")

User.create(facebook: "https://www.facebook.com/profile.php?id=100005615115122", firstName: "Malte", lastName: "Evers", email: "adminfachtest@fh-muenster.de", password: "12345678", team_id: "1", studiengang: "BA-Wirtschaftsinformatik", confirmed_at: DateTime.now )
User.create(facebook: "https://www.facebook.com/profile.php?id=100005615115122", firstName: "Matthias", lastName: "Heinen", email: "dfgdsfgohdsfojdofsv234234@fh-muenster.de", password: "12345678", team_id: "2", studiengang: "BA-Wirtschaftsinformatik", confirmed_at: DateTime.now)
user = User.new(facebook: "https://www.facebook.com/malte.la.7?fref=ts", firstName: "Malte", lastName: "Lange", email: "sddsfdsfsdf2343r8fdscuse74@fh-muenster.de" ,password: "12345678", team_id: "3", studiengang: "BA-Wirtschaftsinformatik", confirmed_at: DateTime.now)
user.set_role("Manager")
user.save
User.create(facebook: "https://www.facebook.com/myles.sutholt?fref=ts", firstName: "Myles", lastName: "Sutholt", email: "sdfjweoif43ru43fj340fj4jf03@fh-muenster.de" ,password: "12345678", team_id: "4", studiengang: "BA-Wirtschaftsinformatik", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/groups/649018005179998/?fref=ts", firstName: "Günther", lastName: "Netzer", email: "dsfvdshfoidsfoijr403ru4344309uf@fh-muenster.de" ,password: "12345678", team_id: "5", studiengang: "BWL", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Fin", lastName: "the Human", email: "23r43fu43fj43ff4j0943jf@fh-muenster.de" ,password: "12345678", team_id: "6", studiengang: "CALA", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Jake", lastName: "the Dog", email: "934zuff43h843fh98439f8@fh-muenster.de" ,password: "12345678", studiengang: "EBP", confirmed_at: DateTime.now)

# 10 User mit Rolle: 1 Admin, 3 Manager, 6 Fachschaftler; ohne Facebook
user = User.new(firstName: "Pippi", lastName: "Langstrumpf", email: "iuztfcvbghjk@fh-muenster.de", password: "kleinerOnkel500", team_id: "5", studiengang: "BWL", confirmed_at: DateTime.now)
user.set_role("Admin")
user.save
user = User.new(firstName: "Holla", lastName: "die Waldfee", email: "uhzgnjkiuzgfd@fh-muenster.de", password: "12345678", team_id: "4", studiengang: "BWL", confirmed_at: DateTime.now)
user.set_role("Manager")
user.save
user = User.new(firstName: "Kanye", lastName: "West", email: "asertgbhji@fh-muenster.de", password: "12345678", team_id: "1", studiengang: "CALA", confirmed_at: DateTime.now)
user.set_role("Manager")
user.save
user = User.new(firstName: "Leonardo", lastName: "DiCaprio", email: "oiuhbvcdsertg@fh-muenster.de", password: "12345678", team_id: "3", studiengang: "EPB", confirmed_at: DateTime.now)
user.set_role("Manager")
user.save
user = User.new(firstName: "Django", lastName: "Unchained", email: "resdcvghjumk@fh-muenster.de", password: "12345678", team_id: "6", studiengang: "BWL", confirmed_at: DateTime.now)
user.set_role("Fachschaft")
user.save
user = User.new(firstName: "Water", lastName: "Melon", email: "uztrdcvbht67u@fh-muenster.de", password: "12345678", team_id: "2", studiengang: "BA-Wirtschaftsinformatik", confirmed_at: DateTime.now)
user.set_role("Fachschaft")
user.save
user = User.new(firstName: "Linus", lastName: "Torvald", email: "okmnbftzuztre@fh-muenster.de", password: "12345678", team_id: "5", studiengang: "BWL", confirmed_at: DateTime.now)
user.set_role("Fachschaft")
user.save
user = User.new(firstName: "Mark", lastName: "Zuckerberg", email: "cvbnhjkki@fh-muenster.de", password: "12345678", team_id: "4", studiengang: "EPB", confirmed_at: DateTime.now)
user.set_role("Fachschaft")
user.save
user = User.new(firstName: "Donald", lastName: "Duck", email: "ztrfghjm@fh-muenster.de", password: "12345678", team_id: "6", studiengang: "BWL", confirmed_at: DateTime.now)
user.set_role("Fachschaft")
user.save
user = User.new(firstName: "Hans", lastName: "im Glück", email: "ikmujnzhb@fh-muenster.de", password: "12345678", team_id: "2", studiengang: "BA-Wirtschaftsinformatik", confirmed_at: DateTime.now)
user.set_role("Fachschaft")
user.save

# 10 normale User ohne Rolle; ohne team_id; 3 ohne Studiengang
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Harry", lastName: "Potter", email: "934zuff43h843fh98439f8@fh-muenster.de" ,password: "12345678", studiengang: "EBP", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Bob", lastName: "Baumeister", email: "34rft678uiiiiiii9@fh-muenster.de" ,password: "12345678", studiengang: "BWL", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Hermine", lastName: "Granger", email: "098ikju76tgfe4@fh-muenster.de" ,password: "12345678", studiengang: "BWL", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Angie", lastName: "Merkel", email: "56zhgfde4567zuji9@fh-muenster.de" ,password: "12345678", studiengang: "CALA", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Bruce", lastName: "Lee", email: "98iknbgtz654efg@fh-muenster.de" ,password: "12345678", studiengang: "BA-Wirtschaftsinformatik", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Barack", lastName: "Obama", email: "12345ertzfgh789@fh-muenster.de" ,password: "12345678", studiengang: "BA-Wirtschaftsinformatik", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Uschi", lastName: "Glas", email: "56678dfgz6rzfhiuhkftu@fh-muenster.de" ,password: "12345678", studiengang: "BWL", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Alice", lastName: "Schwarzer", email: "0987zuknbgrewsd7@fh-muenster.de" ,password: "12345678", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Lara", lastName: "Croft", email: "346hhftu9870okiuz7@fh-muenster.de" ,password: "12345678", confirmed_at: DateTime.now)
User.create(facebook: "https://www.facebook.com/adventuretime/?fref=ts", firstName: "Saitama", lastName: "Hagemanto", email: "ftk658fuzz67i89@fh-muenster.de" ,password: "12345678", confirmed_at: DateTime.now)



Resume.create(name: "Kapstadt", attachment: File.open(File.join(Rails.root, 'kapstadt.pdf')))
Resume.create(name: "Portsmouth", attachment: File.open(File.join(Rails.root, 'portsmouth.pdf')))
Resume.create(name: "Santiago de Chile", attachment: File.open(File.join(Rails.root, 'santiago_de_chile.pdf')))
Resume.create(name: "Universidad de Sevilla", attachment: File.open(File.join(Rails.root, 'universidad_de_sevilla.pdf')))
Resume.create(name: "Universität von Sevillia", attachment: File.open(File.join(Rails.root, 'universität_von_sevilla.pdf')))


Content.create(title: "No 1", content: "Lorem Ipsum Blablabla", user_id: "1", team_id: "1", ok_admin: true )
Content.create(title: "No 2", content: "Quit custodiet undsoweidda", user_id: "2" , team_id: "2", ok_admin: true)
Content.create(title: "No 3", content: "Alea iacta est aha mhmm", user_id: "3", team_id: "3" )
Content.create(title: "No 4", content: "I should tell ya momma on you", user_id: "4", team_id: "4", ok_admin: true )
Content.create(title: "No 5", content: "Praise the Lord", user_id: "5", team_id: "5",ok_admin: true )
Content.create(title: "No 6", content: "Wer hat die Kokosnuss", user_id: "6" , team_id: "6")
Content.create(title: "No 7", content: "Et tu, Brute?", user_id: "7" )
Content.create(title: "No 8", content: "Asinus stupidus est", user_id: "1" , team_id: "1", ok_admin: true)


Content.create(title: "No 9", content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "1", team_id: "1",ok_admin: true )
Content.create(title: "No 10", content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "2" , team_id: "2")
Content.create(title: "No 11", content: "Alea iacta est aha mhmm Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "3", team_id: "3", ok_admin: true )
Content.create(title: "No 12", content: "I should tell ya momma on you Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "4", team_id: "4")
Content.create(title: "No 13", content: "Praise the Lord Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "5", team_id: "5" )
Content.create(title: "No 14", content: "Wer hat die Kokosnuss Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "6" , team_id: "6", ok_admin: true)
Content.create(title: "No 15", content: "Et tu, Brute? Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.", user_id: "7", ok_admin: true, link: "https://github.com/malagant/LecturesWS2015" )
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

