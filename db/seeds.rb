require 'rest-client'

require 'json'

 uefa_teams = [133601,
   133604,
   134301,
   134355,
   133619,
   133610,
   133632,
   133615
 ]


### GET ALL TEAMS --------------------------------------------------------------
#  counter = 0

#  10.times do
#    puts("starting")
#    puts counter

#    response = RestClient.get("https://www.thesportsdb.com/api/v1/json/2/search_all_teams.php?l=English%20Premier%20League")
#    data = JSON.parse(response)

#    team = data["teams"][10]

#    name = team["strTeam"]
#    altName = team["strAlternate"]
#    founded = team["intFormedYear"]
#    description = team["strDescriptionEN"]
#    league = team["strLeague"]
#    manager = team["strManager"]
#    stadium_location = team["strStadiumLocation"]
#    home_stadium = team["strStadium"]
#    stadium_thumbnail = team["strStadiumThumb"]
#    stadium_description = team["strStadiumDescription"]
#    stadium_capacity = team["intStadiumCapacity"]
#    website = team["strWebsite"]
#    facebook = team["strFacebook"]
#    twitter = team["strTwitter"]
#    instagram = team["strInstagram"]
#    team_logo = team["strTeamBadge"]
#    team_jersey = team["strTeamJersey"]

#    Team.create(
#      name: name,
#      altName: altName,
#      founded: founded,
#      league: league,
#      manager: manager,
#      description: description,
#      stadium_location: stadium_location,
#      home_stadium: home_stadium,
#      stadium_thumbnail: stadium_thumbnail,
#      stadium_description: stadium_description,
#      stadium_capacity: stadium_capacity,
#      website: website,
#      facebook: facebook,
#      twitter: twitter,
#      instagram: instagram,
#      team_logo: team_logo,
#      team_jersey: team_jersey
#    )
#    puts("Ending {name}")

#    counter += 1

#  end

###END GET ALL TEAMS ----------------------------------------------------------

### START GET ALL PlAYERS ------------------------------------------------------

#  playersCounter = 0
 
#  1.times do
#    puts playersCounter
#    response = RestClient.get("https://www.thesportsdb.com/api/v1/json/2/searchplayers.php?p=Gabriel%20Martinelli")
#    data = JSON.parse(response)

#    players = data["player"]

#    players.each do |player|
#      nationality = player["strNationality"]
#      full_name = player["strPlayer"]
#      team_name = player["strTeam"]
#      date_of_birth = player["dateBorn"]
#      birth_location = player["strBirthLocation"]
#      date_signed = player["dateBorn"]
#      contracted_salary = player["strSigning"]
#      wage = player["strWage"]
#      description = player["strDescriptionEN"]
#      position = player["strPosition"]
#      height = player["strHeight"]
#      weight = player["strWeight"]
#      profile_image = player["strThumb"]
#      thumbnail = player["strCutout"]
#      team = Team.find_by(name: team_name)
#      team_id = team.id
 
#      Player.create(
#        nationality: nationality,
#        full_name: full_name,
#        team_name: team_name,
#        date_of_birth: date_of_birth,
#        birth_location: birth_location,
#        date_signed: date_signed,
#        contracted_salary: contracted_salary,
#        wage: wage,
#        description: description,
#        position: position,
#        height: height,
#        weight: weight,
#        profile_image: profile_image,
#        thumbnail: thumbnail,
#        team_id: team_id,
#      )
#      puts full_name
#    end
 

#   playersCounter += 1
#   puts playersCounter
# end

### END GET ALL PlAYERS --------------------------------------------------------

### Random Matchup of for gamees  ----------------------------------------------
#
   Game.create(
     home_team_id: 2,
     away_team_id: 1,
     match_name: "#{Team.find_by(id: 2).name} vs #{Team.find_by(id: 1).name}",
     match_date: Time.new(2022, 07, 28),
     match_time: Time.new(2022, 07, 28, 18, 0, 0, "+18:00"),
     location: "Wembly Stadium",
     street: nil,
     street_2: nil,
     city: "London",
     state: nil,
     country: "England",
     zip: "HA9 0WS",
     one: "1.75",
     draw: "3.35",
     two: "1.75",
     one_draw: "2.75",
     two_draw: "1.35"
   )

   Game.create(
     home_team_id: 8,
     away_team_id: 5,
     match_name: "#{Team.find_by(id: 8).name} vs #{Team.find_by(id: 5).name}",
     match_date: Time.new(2022, 07, 28),
     match_time: Time.new(2022, 07, 28, 18, 0, 0, "+18:00"),
     location: "Wembly Stadium",
     street: nil,
     street_2: nil,
     city: "London",
     state: nil,
     country: "England",
     zip: "HA9 0WS",
     one: "1.75",
     draw: "3.35",
     two: "1.75",
     one_draw: "2.75",
     two_draw: "1.35"
   )

   Game.create(
     home_team_id: 4,
     away_team_id: 3,
     match_name: "#{Team.find_by(id: 4).name} vs #{Team.find_by(id: 3).name}",
     match_date: Time.new(2022, 07, 28),
     match_time: Time.new(2022, 07, 28, 18, 0, 0, "+18:00"),
     location: "Camp Nou",
     street: "C. d'Aristides Maillol, 12",
     street_2: nil,
     city: "Barcelona",
     state: nil,
     country: "Spain",
     zip: "08028",
     one: "1.75",
     draw: "3.35",
     two: "1.75",
     one_draw: "2.75",
     two_draw: "1.35"
   )

   Game.create(
     home_team_id: 9,
     away_team_id: 2,
     match_name: "#{Team.find_by(id: 9).name} vs #{Team.find_by(id: 2).name}",
     match_date: Time.new(2022, 07, 28),
     match_time: Time.new(2022, 07, 28, 18, 0, 0, "+18:00"),
     location: "Camp Nou",
     street: "C. d'Aristides Maillol, 12",
     street_2: nil,
     city: "Barcelona",
     state: nil,
     country: "Spain",
     zip: "08028",
     one: "1.75",
     draw: "3.35",
     two: "1.75",
     one_draw: "2.75",
     two_draw: "1.35"
   )

# ### End Random Matchup of for gamees  ------------------------------------------
#
# ### Sample User and account ----------------------------------------------------
#
#   User.create(
#     first_name: "James",
#     last_name: "Bond",
#     email: "jbond@bond.org",
#     password_digest: "password",
#     phone: "555-555-5555",
#     street: "Tomorrow Never Dies Ln",
#     street_2: nil,
#     city: "London",
#     state: nil,
#     country: "England",
#     zip: "HA9 0WS"
#   )
# #
#   User.create(
#     first_name: "Lil Bo",
#     last_name: "Peep",
#     email: "lilBo@peep.org",
#     password_digest: "password",
#     phone: "555-555-5555",
#     street: "Lost Her Shoe",
#     street_2: nil,
#     city: "MiddleOfNowhere",
#     state: "Iowa",
#     country: "USA",
#     zip: "10367"
#   )
# #
#   Account.create(
#     user_id: 1,
#     balance: "5000",
#     starting_balance: "5000"
#   )
# #
#   Account.create(
#     user_id: 2,
#     balance: "5000",
#     starting_balance: "5000"
#   )
#
# ### End Sample User and account ------------------------------------------------
#
# ### Sameple Bets ---------------------------------------------------------------
#
#   Bet.create(
#     user_id: 1,
#     game_id: 10,
#     wager: 1000,
#     currency: "USD",
#     odds: Game.first.one,
#     bet_type: "Home win"
#   )
# #
#   Bet.create(
#     user_id: 1,
#     game_id: 12,
#     wager: 2000,
#     currency: "USD",
#     odds: Game.second.draw,
#     bet_type: "Draw"
#   )
# #
#   Bet.create(
#     user_id: 1,
#     game_id: 11,
#     wager: 500,
#     currency: "USD",
#     odds: Game.third.two,
#     bet_type: "Away win"
#   )
# #
#   Bet.create(
#     user_id: 2,
#     game_id: 12,
#     wager: 1000,
#     currency: "USD",
#     odds: Game.all[3].one,
#     bet_type: "Home win"
#   )
# #
#   Bet.create(
#     user_id: 2,
#     game_id: 10,
#     wager: 200,
#     currency: "USD",
#     odds: Game.first.draw,
#     bet_type: "Draw"
#   )
# #
#   Bet.create(
#     user_id: 2,
#     game_id: 12,
#     wager: 800,
#     currency: "USD",
#     odds: Game.first.one_draw,
#     bet_type: "Home Draw"
#   )
# #
#   Bet.create(
#     user_id: 2,
#     game_id: 11,
#     wager: 3000,
#     currency: "USD",
#     odds: Game.second.two_draw,
#     bet_type: "Away Draw"
#   )

### End Sameple Bets -----------------------------------------------------------


### GET real games -------------------------------------------------------------

  # gamesCounter = 0

  # response = RestClient.get("https://www.thesportsdb.com/api/v1/json/1/eventsnextleague.php?id=4480")
  # data = JSON.parse(response)

  # games = data["events"]

  # 8.times do
  #   puts gamesCounter
  #   game = games[gamesCounter]

  #   teams = game["strEvent"].split(" vs ")
  #   home_team = Team.find_by(name: teams[0])
  #   away_team = Team.find_by(name: teams[1])

  #   date = game["dateEvent"].split("-")
  #   year = date[0].to_i
  #   month = date[1].to_i
  #   day = date[2].to_i

  #   time = game["strTime"].split(":")
  #   hour = time[0].to_i
  #   minute = time[1].to_i
  #   second = time[2].to_i

  #   def find_time_zone(home_team)
  #     if home_team.name === "Tottenham" || home_team.name === "Liverpool" ||  home_team.name === "Man United" || home_team.name === "Man City" || home_team.name === "FC Porto"
  #       return "+00:00"
  #     elsif home_team.name === "Ajax" || home_team.name === "Juventus" || home_team.name === "Barcelona"
  #       return "+01:00"
  #     end
  #   end

  #   time_zone = find_time_zone(home_team)

  #   Game.create(
  #     home_team_id: home_team.id,
  #     away_team_id: away_team.id,
  #     match_name: "#{home_team.name} vs. #{away_team.name}",
  #     match_date: Time.new(year, month, day),
  #     match_time: Time.new(year, month, day, hour, minute, second, time_zone),
  #   )

  #   gamesCounter += 1
  # end

### end GET real games ---------------------------------------------------------