# NBA Stats API Documentation

## Endpoints (and their parameters)

### Team Info (teaminfocommon)
Takes in TeamID

Provides general team information about the team whose ID you provided. The following are available from an instance of the `TeamInfo` class.
```ruby
attr_reader :name, :abbreviation, :city, :code, :conference, :conference_rank,
            :current_or_last_year, :division, :division_rank, :first_year,
            :id, :losses, :season_year, :wins, :win_percentage
```

### Team Roster (commonteamroster)
Takes in TeamID

Provides a list of players and coaches. 
```ruby
attr_reader :coaches, :players
```

Each coach is presented as an array. Arrays are mapped to objects with the following attributes:
```ruby
attr_reader :code, :college, :data :first_name, :full_name, :id, :is_assistant,
            :last_name, :position, :season, :team_id
```

Each player is also presented as an array. Arrays are mapped to objects with the following attributes:
```ruby
attr_reader :age, :birth_date, :data, :experience, :full_name, :height, :id
            :league_id, :number, :position, :school, :season, :team_id, :weight
```

### Paramters (and their possible values)

### LeagueID
00 (NBA), 01 (ABA)

### PerMode
Totals, PerGame, Per36

### TeamID
Integer ID -- see `lib/team.rb`