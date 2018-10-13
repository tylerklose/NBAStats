require './lib/coach'
require './lib/player'

# This class encapsulates the response returned via
# NBAStats::Teams.knicks.roster
class Roster
  attr_reader :coaches, :data, :players

  def initialize(team_id)
    parameters = { 'TeamID' => team_id, 'Season' => NBAStats::CURRENT_SEASON,
                   'SeasonType' => 'regular' }
    @data = extract(Request.get('commonteamroster', parameters))

    @coaches = @data[1]['rowSet'].map { |coach| Coach.new(coach) }
    @players = @data[0]['rowSet'].map { |player| Player.new(player) }
  end

  protected

  def extract(response)
    response['resultSets']
  end
end
