# a place to try things

require './lib/nba_stats'

teams = NBAStats::Team
"\nbeginning with knicks"
knicks = teams.knicks
puts knicks.info.city
puts knicks.info.abbreviation

puts "\nshould be suns"
suns = teams.suns
puts suns.info.first_year
puts suns.info.abbreviation

puts "\n\ncurrently the knicks info gets printed out twice, not sure why."

# puts "players: #{knicks_roster.players}"
# puts "coaches: #{knicks_roster.coaches}"
