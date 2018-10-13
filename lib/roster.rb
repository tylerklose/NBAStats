require './lib/coach'
require './lib/player'

class Roster
  attr_reader :coaches, :players

  def initialize(team_id)
    parameters = { 'TeamID' => team_id, 'Season' => NBAStats::CURRENT_SEASON, 'SeasonType' => 'regular' }
    response = Request.get('commonteamroster', parameters)

    @coaches = response['resultSets'][1]['rowSet'].map { |coach| Coach.new(coach) }
    @players = response['resultSets'][0]['rowSet'].map { |player| Player.new(player) }
  end
end
