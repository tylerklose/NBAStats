require 'json'
require 'rest-client'
require './lib/team'
require './lib/player'
require './lib/request'

module NBAStats
  BASE_URL = 'http://stats.nba.com/stats/'
  CURRENT_SEASON = '2018-19'
  REQUEST_HEADERS = {
    'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36',
    'Dnt': '1',
    'Accept-Encoding': 'gzip, deflate, sdch',
    'Accept-Language': 'en',
    'origin': 'http://stats.nba.com'
  }
end
