require './lib/coach'
require './lib/player'

class Roster
  attr_reader :coaches, :players

  def initialize(team_id)
    response = JSON.parse(RestClient.get("stats.nba.com/stats/commonteamroster/?LeagueID=00&TeamID=#{team_id}&Season=2018-19&SeasonType=regular", NBAStats::REQUEST_HEADERS))

    @coaches = response['resultSets'][1]['rowSet'].map { |coach| Coach.new(coach) }
    @players = response['resultSets'][0]['rowSet'].map { |player| Player.new(player) }
  end
end
