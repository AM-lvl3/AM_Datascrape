require 'rubygems'
require 'nokogiri'
require 'open-uri'

File.open('mapleleafshotstove_scrape.txt', 'w') do |f|
  page = Nokogiri::HTML(open("http://mapleleafshotstove.com/"))
  headlines = page.css('.entry-title')
  headlines.each do |link|
    f.write('<div>' + link.text + "</div>\n")
  end
end

# .class
# #id
# img