# NBAStats
A Ruby wrapper around the completely undocumented stats.nba.com API

Based on internet consensus, the NBA allows developers to retrieve data from their APIs, but they provide zero hand-holding (aka there is no known documentation on how to use the API). I hope to create a wrapper that is both easy to use and heavily documented (to make it even easier to use). For the time being, I will continue to poke around and see what kind of progress I can make by starting off small and gradually adding on more and more capabilities.

More. will. come.

## Documentation

I am writing this documentation before I write any of the actual code. Why? Because I want this wrapper to be easy to use and have it feel natural when working with it. Some of what is listed in here will not yet be implemented.

### Implemented

Easy access to teams with the following syntax:
```ruby
NBAStats::Team.knicks
NBAStats::Team.lakers
NBAStats::Team.sixers
```

You can get more information like roster info:
```ruby
NBAStats::Team.knicks.roster.players
NBAStats::Team.knicks.roster.coaches
```

You can also get team info:
```ruby
NBAStats::Team.knicks.info.id
NBAStats::Team.knicks.info.season_year
NBAStats::Team.knicks.info.city
NBAStats::Team.knicks.info.name
NBAStats::Team.knicks.info.abbreviation
NBAStats::Team.knicks.info.conference
NBAStats::Team.knicks.info.division
NBAStats::Team.knicks.info.code
NBAStats::Team.knicks.info.wins
NBAStats::Team.knicks.info.losses
NBAStats::Team.knicks.info.win_percentage
NBAStats::Team.knicks.info.conference_rank
NBAStats::Team.knicks.info.division_rank
NBAStats::Team.knicks.info.first_year
NBAStats::Team.knicks.info.current_or_last_year
```

^ I would prefer the following
```ruby
NBAStats::Team.knicks.players
NBAStats::Team.knicks.coaches

NBAStats::Team.knicks.city
NBAStats::Team.knicks.name
NBAStats::Team.knicks.abbreviation
NBAStats::Team.knicks.conference
```


### Ideas for the Future

```ruby
Player('steph curry').team
Player('steph curry').stats
Player('steph curry').info

# we could probably use method missing to take care of some of these. keep all the player ids in a hash somewhere

College('unc').players

knicks.games.vs('sixers')
knicks.games.home
knicks.games.away

League.leaders
League.standings
League.east.teams
League.west.standings
```

