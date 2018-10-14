require 'test/unit'
include Test::Unit::Assertions # rubocop:disable Style/MixinUsage

require 'simplecov'
require 'simplecov-shield'

SimpleCov.formatter = SimpleCov::Formatter::ShieldFormatter
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

step 'Create Team object <table>' do |teams_table|
  teams_table.rows.each do |team_row|
    NBAStats::Team.send(team_row['Team'])
  end
end

@object = nil

step 'Get the <team> <attribute>' do |team, attribute|
  team = NBAStats::Team.send(team)
  @object = team.send(attribute)
  @object.data
end

step 'Assert that the head coach is <full_name>' do |full_name|
  assert_equal(@object.coaches.first.full_name, full_name)
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

step 'Check all Player attributes' do
  player = @object.players.first

  player.age
  player.birth_date
  player.data
  player.experience
  player.full_name
  player.height
  player.id
  player.league_id
  player.number
  player.position
  player.school
  player.season
  player.team_id
  player.weight
  player.rookie?
  player.years_of_experience
end

step 'Check all coach attributes' do
  coach = @object.coaches.first

  coach.coaching_level
  coach.code
  coach.college
  coach.data
  coach.first_name
  coach.full_name
  coach.id
  coach.last_name
  coach.position
  coach.season
  coach.team_id
  coach.assistant?
  coach.head_coach
end

step 'Check all the TeamInfo attributes' do
  @object.abbreviation
  @object.city
  @object.code
  @object.conference
  @object.conference_rank
  @object.current_or_final_year
  @object.data
  @object.division
  @object.division_rank
  @object.first_year
  @object.id
  @object.losses
  @object.season_year
  @object.wins
  @object.win_percentage
end