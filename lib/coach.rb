# Each element of the array returned via NBAStats::Teams.knicks.roster.coaches
# will be an instance of the Coach class.
class Coach
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def coaching_level
    # this is what it seems like from my sample size of 1
    # 1.0 - head coach
    # 2.0 - assistant coach
    # 3.0 - trainer
    # 4.0 -- assistant trainer

    @data[7]
  end

  def code
    @data[6]
  end

  def college
    # data[9] yields 'College - North Carolina'
    data[9].delete_prefix('College - ')
  end

  def first_name
    @data[3]
  end

  def full_name
    @data[5]
  end

  def id
    @data[2]
  end

  def last_name
    @data[4]
  end

  def position
    @data[8]
  end

  def season
    @data[1]
  end

  def team_id
    @data[0]
  end

  def assistant?
    coaching_level != 1.0
  end

  def head_coach?
    coaching_level == 1.0
  end
end
