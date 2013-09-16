require 'net/http'
require 'json'
class Ruby2gis
  attr_accessor :api_key
  attr_accessor :version

  def initialize(file_with_key = '2gisAPI.key')
    @api_key = File.open(file_with_key) {|f| f.readline}
    @version = '1.3'
  end

  def http_get(address)
    uri=URI(address)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    begin
      response = http.request(request).body
      result_json = JSON.parse(response)
    rescue
      result_json = nil
    end
    return result_json
  end

  def projects
    projects_url = "http://catalog.api.2gis.ru/project/list?version=#{@version}&key=#{@api_key}"
    json = http_get(projects_url)
    if json['response_code'] == '200'
      json['result']
    else
     fail '[Ruby2gis] Error while login'
    end
  end
end