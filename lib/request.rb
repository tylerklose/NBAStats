module Request
  def self.get(endpoint, parameters)
    JSON.parse(fetch(request_url(endpoint, parameters)))
  end

  protected

  def self.fetch(url)
    RestClient.get(url, NBAStats::REQUEST_HEADERS)
  end

  def self.parameters_string(parameters)
    parameters = { 'LeagueID' => '00' }.merge(parameters)
    parameters.map { |key, value| "#{key}=#{value}" }.join('&')
  end

  def self.request_url(endpoint, parameters)
    "#{NBAStats::BASE_URL}#{endpoint}/?#{parameters_string(parameters)}"
  end
end
