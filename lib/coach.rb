class Coach
  attr_reader :code, :college, :data, :first_name, :full_name, :id, :is_assistant,
              :last_name, :position, :season, :team_id

  def initialize(data)
    @data = data
    @team_id = data[0]
    @season = data[1]
    @id = data[2]
    @first_name = data[3]
    @last_name = data[4]
    @full_name = data[5]
    @code = data[6]
    @is_assistant = data[7]
    @position = data[8]
    @college = data[9].delete_prefix('College - ') # 'College - North Carolina' is an example
  end

  def is_assistant?
    is_assistant != 1.0
  end

  def is_head_coach?
    is_assistant == 1.0
  end
end
