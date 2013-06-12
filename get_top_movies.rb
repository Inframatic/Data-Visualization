require 'rubygems'
require 'nokogiri'
require 'open-uri'


File.open('movies .txt', 'w') do |m|


page = Nokogiri::HTML(open("http://www.rottentomatoes.com/top/bestofrt/?year=2013"))

movies = page.css('.content_body.clearfix > table.left.rt_table tr')


movies.each do |movie|
	movie = movie.txt.text.gsub(/[\n\t]/,'')
	m.write(movie)

