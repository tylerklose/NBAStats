# The response returned via NBAStats::Teams.knicks.info
# will be an instance of the Player class.
class TeamInfo
  attr_reader :data

  def initialize(team_id)
    parameters = { 'TeamID' => team_id, 'Season' => '2018-19',
                   'SeasonType' => 'regular' }
    @data = extract(NBAStats::Request.get('teaminfocommon', parameters))
  end

  def abbreviation
    @data[4]
  end

  def city
    @data[2]
  end

  def code
    @data[7]
  end

  def conference
    @data[5]
  end

  def conference_rank
    @data[11]
  end

  def current_or_final_year
    @data[14]
  end

  def division
    @data[6]
  end

  def division_rank
    @data[12]
  end

  def first_year
    @data[13]
  end

  def id
    @response[0]
  end

  def losses
    @data[9]
  end

  def season_year
    @data[1]
  end

  def wins
    @data[8]
  end

  def win_percentage
    @data[10]
  end

  protected

  def extract(response)
    response['resultSets'][0]['rowSet'][0]
  end
end
