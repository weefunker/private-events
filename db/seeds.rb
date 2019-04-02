# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
    ["weefunker", "chelsea0"],
    ["jordanpeterson", "chelsea0"],
    ["samharis", "chelsea0"],
    ["blindboy", "chelsea0"],
    ["joerogan", "chelsea0"],
]

user_list.each do |username,password_digest|
    User.create( username: username, password_digest: password_digest)
end 

event_list = [
    [1, "Pants Party", "A party in my pants", "20/01/2019"],
    [1, "Washing myself", "Ladyfriend needs a clean one", "20/06/2019"],
    [1, "Alone time", "Getting a grip of myself", "20/01/2020"],
    [3, "Sexy Hypnosis Time", "Make your boner great again", "18/12/2019"],
    [3, "Me vs Jordan Peterson", "Fight to the death", "18/12/2019"],
    [3, "Waking up", "Waking up with Sam Haris and morning wood", "19/12/2020"],
    [4, "Cuck time", "Cuck a doodle doo with his missus", "01/01/2019"],
    [4, "Marxist Rally", "Down with the bourgeoisie", "01/02/2019"],
    [4, "Self Hatred", "Time for man guilt", "01/03/2020"],
    [2, "12 Rules for Shaving your balls", "A dance of balls and razor", "01/09/2019"],
    [2, "Antifa Tower Defence", "Keeping my room clean of cultural marxists", "01/10/2019"],

]
event_list.each do |creator_id,title,details,date|
    Event.create!(title: title, details: details, date: date, creator_id: creator_id)
end 