require 'pry'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))

c_names = Array.new

# Get all the names of the coins from 1 to 20
page.xpath("//tr//a[@class='cmc-table__column-name- -name cmc-link']").each{||c_name << c_name.text}

# Get all the names of the coins from 21 to 200
td = page.xpath("//tr//td[@class='name-cell']//a")

# Add the names to the array
td.each{|c_name| c_names << c_name.text}

# Print the names
c_names.each{|c_name| puts c_name}

