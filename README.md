![Coverage](https://github.com/tylerklose/NBAStats/blob/housekeeping/coverage/coverage.svg) [![Gauge Badge](https://gauge.org/Gauge_Badge.svg)](https://gauge.org)

# NBAStats
A Ruby wrapper around the completely undocumented stats.nba.com API

Based on internet consensus, the NBA allows developers to retrieve data from their APIs, but they provide zero hand-holding (aka there is no known documentation on how to use the API). I hope to create a wrapper that is both easy to use and heavily documented (to make it even easier to use). For the time being, I will continue to poke around and see what kind of progress I can make by starting off small and gradually adding on more and more capabilities.

More. will. come.

## Documentation

I am writing this documentation before I write any of the actual code. Why? Because I want this wrapper to be easy to use and have it feel natural when working with it. Some of what is listed in here will not yet be implemented.

### Implemented

See NBA Stats API Documentation (it's more thorough at the moment)


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

