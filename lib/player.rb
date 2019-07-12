# frozen_string_literal: true

# Each element of the array returned via NBAStats::Teams.knicks.roster.players
# will be an instance of the Player class.
class Player
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def age
    @data[9]
  end

  def birth_date
    @data[8]
  end

  def experience
    @data[10]
  end

  def full_name
    @data[3]
  end

  def height
    @data[6]
  end

  def id
    @data[12]
  end

  def league_id
    @data[2]
  end

  def number
    @data[4]
  end

  def position
    @data[5]
  end

  def school
    @data[11]
  end

  def season
    @data[1]
  end

  def team_id
    @data[0]
  end

  def weight
    @data[7]
  end

  def rookie?
    @experience == 'R'
  end

  def years_of_experience
    rookie? ? 0 : @experience.to_i
  end
end
