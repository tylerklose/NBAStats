class TeamInfo
  attr_reader :name, :abbreviation, :city, :code, :conference, :conference_rank,
              :current_or_last_year, :division, :division_rank, :first_year,
              :id, :losses, :season_year, :wins, :win_percentage

  def initialize(team_id)
    response = JSON.parse(RestClient.get("stats.nba.com/stats/teaminfocommon/?LeagueID=00&TeamID=1610612752&Season=2018-19&SeasonType=regular", NBAStats::REQUEST_HEADERS))['resultSets'][0]['rowSet'][0]

    @name = response[3]
    @abbreviation = response[4]
    @city = response[2]
    @code = response[7]
    @conference = response[5]
    @conference_rank = response[11]
    @current_or_last_year = response[14]
    @division = response[6]
    @division_rank = response[12]
    @first_year = response[13]
    @id = response[0]
    @losses = response[9]
    @season_year = response[1]
    @wins = response[8]
    @win_percentage = response[10]
  end
end