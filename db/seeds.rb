# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Show.create(name: '2017 Academy Awards', date: Date.today)
Game.create(name: 'Trav\'s Oscar Party',show_id:1)
User.create(fname: 'Travis', email: 'travis@example.com', password: 'password')
categories = Category.create([{name:"Best Picture"},{name:"Best Actor"},
                                                  {name:"Best Actress"}])

awards = Award.create([{show_id: 1, category_id: 1},{show_id:1,category_id:2},
  {show_id:1,category_id:3}])

nominations = Nomination.create([{award_id: 1, nominee: "Moonlight"},{award_id: 1,
          nominee: "Arrival"},{award_id: 1, nominee: "La La Land"},{award_id: 1,
          nominee: "Hell or High Water"},{award_id: 2, nominee: "Casey Affleck"},
          {award_id: 2, nominee: "Denzel Washington"},{award_id: 2, 
                    nominee: "Tom Hanks"}, {award_id: 2, nominee: "Crispin Glover"},
                    {award_id: 3, nominee: "Emma Stone"},{award_id: 3,
          nominee: "Meryl Streep"},{award_id: 3, nominee: "Natalie Portman"},{award_id: 3,
          nominee: "Frances McDormand"}])
