# a place to try things with the API and/or wrapper

require './lib/nba_stats'

knicks_roster = NBAStats::Team::Roster.new()
puts "players: #{knicks_roster.players}"
puts "coaches: #{knicks_roster.coaches}"
