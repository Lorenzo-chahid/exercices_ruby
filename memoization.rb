require 'uri'
require 'net/http'
require 'json'

class SpaceXLaunches

  def stats
    puts({
           success: success,
           failure: failure
         })
  end

  def success
    fetch_data.select { |d| d['launch_success'] }.count
  end

  def failure
    fetch_data.select { |d| d['launch_success'] = false }.count
  end

  def data
    @data ||= fetch_data
  end

  def fetch_data
    puts "Fetching Data..."
    sleep 3
    data = JSON.parse(Net::HTTP.get(URI.parse('https://api.spacexdata.com/v3/launches')))
    puts "Fetching data completed"
    data
  end
end


a = SpaceXLaunches.new
puts a.fetch_data
puts a.stats