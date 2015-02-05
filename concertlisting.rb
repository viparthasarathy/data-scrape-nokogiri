require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do 
  url = "http://www.930.com/concerts"

  data = Nokogiri::HTML(open(url))
  @concerts = data.css('.list-view-item')
  erb :shows

end



# concerts.each do |concert|
# 	#name of concert
#   puts concert.at_css('.headliners').text.strip

#   #date of concert
#   puts concert.at_css('.dates').text.strip

#   #time
#   puts concert.at_css('.times').text.strip

#   #price
#   puts concert.at_css('.ticket-price').text.strip.match(/\$[\d]+/)
  
#   #newline
#   puts 
#  end