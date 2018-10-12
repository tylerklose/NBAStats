module NBAStats
  module Team
    class Roster
      attr_reader :coaches, :players

      def initialize(*args)
        super(*args)

        response = JSON.parse(RestClient.get('stats.nba.com/stats/commonteamroster/?LeagueID=00&TeamID=1610612752&Season=2018-19', NBAStats::REQUEST_HEADERS))
        @coaches = response['resultSets'][1]['rowSet'].map { |coach| coach[5] }
        @players = response['resultSets'][0]['rowSet'].map { |player| player[3] }
      end
    end
  end
end
