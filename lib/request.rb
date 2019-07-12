# frozen_string_literal: true

module NBAStats
  # Wrapper around the formulation of request to stats.nba.com
  module Request
    def self.get(endpoint, parameters)
      JSON.parse(fetch(request_url(endpoint, parameters)))
    end

    class << self
      protected

      def fetch(url)
        RestClient.get(url, NBAStats::REQUEST_HEADERS)
      end

      def parameters_string(parameters)
        parameters = { 'LeagueID' => '00' }.merge(parameters)
        parameters.map { |key, value| "#{key}=#{value}" }.join('&')
      end

      def request_url(endpoint, parameters)
        "#{NBAStats::BASE_URL}#{endpoint}/?#{parameters_string(parameters)}"
      end
    end
  end
end
