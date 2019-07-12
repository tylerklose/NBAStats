# frozen_string_literal: true

# a place to try things

require './lib/nba_stats'

teams = NBAStats::Team
knicks = teams.knicks
knicks_roster = knicks.roster
puts knicks_roster.coaches.first.data
puts knicks_roster.players[9].data
# puts knicks.info.abbreviation

# Player.new(1610612752).info
