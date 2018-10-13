require 'test/unit'
include Test::Unit::Assertions # rubocop:disable Style/MixinUsage

require 'simplecov'
SimpleCov.start

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

step 'Data is obtainable <table>' do |queries_table|
  queries_table.rows.each do |query_row|
    queries = [query_row['Team'], query_row['first_method'], query_row['second_method'], query_row['third_method'], query_row['fourth_method']].map {|method_name| method_name == 'nil' ? nil : method_name}.compact
    puts "queries: #{queries}"
    object = NBAStats::Team
    queries.each_with_index do |query, index|
      object = object.send(query)
    end
  end
end
