class Player
  attr_reader :age, :birth_date, :data, :experience, :full_name, :height, :id,
              :league_id, :number, :position, :school, :season, :team_id, :weight

  def initialize(data)
    @data = data
    @team_id = data[0]
    @season = data[1]
    @league_id = data[2]
    @full_name = data[3]
    @number = data[4]
    @position = data[5]
    @height = data[6]
    @weight = data[7]
    @birth_date = data[8]
    @age = data[9]
    @experience = data[10]
    @school = data[11]
    @id = data[12]
  end

  def is_a_rookie?
    @experience == 'R'
  end

  def years_of_experience
    is_a_rookie ? 0 : @experience.to_i
  end
end
