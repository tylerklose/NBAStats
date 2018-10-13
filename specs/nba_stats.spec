# NBAStats specification
Tags: nbastats, query


## Testing Gauge

A user must be able to query the Knicks' first coach

* Require NBAStats library
* Query for Knicks first coach

## Testing Data-Driven Gauge

This test will check to see if we can check multiple coaches with one script

Here's a step that takes a table

* Coaches are still up to date
 |Team   |Coach Name   |
 |-------|-------------|
 |knicks |David Fizdale|
 |celtics|Brad Stevens |
 |lakers |Luke Walton  |


## Get 100% code coverage

Use a data table to send everything

* Data is obtainable
  |Team                 |first_method         |second_method        |third_method         |fourth_method        |
  |---------------------|---------------------|---------------------|---------------------|---------------------|
  |bucks                |roster               |coaches              |first                |full_name            |
  |bulls                |info                 |data                 |nil                  |nil                  |
  |cavaliers            |roster               |players              |first                |age                  |
  |celtics              |info                 |abbreviation         |nil                  |nil                  |
  |clippers             |info                 |city                 |nil                  |nil                  |
  |grizzlies            |info                 |code                 |nil                  |nil                  |
  |hawks                |info                 |conference           |nil                  |nil                  |
  |heat                 |info                 |conference_rank      |nil                  |nil                  |
  |hornets              |info                 |current_or_final_year|nil                  |nil                  |
  |jazz                 |info                 |division             |nil                  |nil                  |
  |kings                |info                 |division_rank        |nil                  |nil                  |
  |knicks               |info                 |first_year           |nil                  |nil                  |
  |lakers               |info                 |id                   |nil                  |nil                  |
  |magic                |info                 |losses               |nil                  |nil                  |
  |mavericks            |info                 |name                 |nil                  |nil                  |
  |nets                 |info                 |season_year          |nil                  |nil                  |
  |nuggets              |info                 |wins                 |nil                  |nil                  |
  |pacers               |info                 |win_percentage       |nil                  |nil                  |
  |pelicans             |roster               |data                 |nil                  |nil                  |
  |pistons              |roster               |players              |first                |birth_date           |
  |raptors              |roster               |players              |first                |experience           |
  |rockets              |roster               |players              |first                |height               |
  |sixers               |roster               |players              |first                |id                   |
  |spurs                |roster               |players              |first                |league_id            |
  |suns                 |roster               |players              |first                |number               |
  |thunder              |roster               |players              |first                |position             |
  |timberwolves         |roster               |players              |first                |school               |
  |trailblazers         |roster               |coaches              |first                |season               |
  |warriors             |roster               |coaches              |first                |team_id              |
  |wizards              |roster               |players              |first                |weight               |
  |bucks                |roster               |players              |first                |rookie?              |
  |bucks                |roster               |players              |first                |years_of_experience  |
  |bucks                |roster               |players              |first                |code                 |
  |cavaliers            |roster               |coaches              |first                |college              |
  |bucks                |roster               |coaches              |first                |first_name           |
  |bulls                |roster               |coaches              |first                |coaching_level       |
  |bucks                |roster               |coaches              |first                |last_name            |
  |hornets              |roster               |players              |first                |position             |
  |grizzlies            |roster               |players              |first                |season               |
  |bulls                |roster               |coaches              |first                |assistant?           |
  |bucks                |roster               |coaches              |first                |head_coach?          |