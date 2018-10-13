require 'test/unit'
include Test::Unit::Assertions # rubocop:disable Style/MixinUsage

step 'Require NBAStats library' do
  require './lib/nba_stats'
end

step 'Query for Knicks first coach' do
  NBAStats::Team.knicks.roster.coaches.first
end

step 'Coaches are still up to date <table>' do |coaches_table|
  coaches_table.rows.each do |row|
    team = row['Team']
    expected_coach = row['Coach Name']

    actual_coach = NBAStats::Team.send(team).roster.coaches.first.full_name
    assert_equal(expected_coach, actual_coach)
  end
end
