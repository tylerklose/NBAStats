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
