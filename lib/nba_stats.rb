require 'json'
require 'rest-client'

require './lib/team'
require './lib/player'
require './lib/request'

# This is a wrapper around the undocumented API at stats.nba.com
module NBAStats
  BASE_URL = 'http://stats.nba.com/stats/'.freeze
  CURRENT_SEASON = '2018-19'.freeze

  user_agent =  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5)'
  user_agent += ' AppleWebKit/537.36 (KHTML, like Gecko)'
  user_agent += ' Chrome/45.0.2454.101 Safari/537.36'

  REQUEST_HEADERS = {
    'user-agent': user_agent,
    'Dnt': '1',
    'Accept-Encoding': 'gzip, deflate, sdch',
    'Accept-Language': 'en',
    'origin': 'http://stats.nba.com'
  }.freeze
end
