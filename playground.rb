# a place to try things

require './lib/nba_stats'

knicks_roster = NBAStats::Team.knicks.roster
puts "players: #{knicks_roster.players}"
puts "coaches: #{knicks_roster.coaches}"
