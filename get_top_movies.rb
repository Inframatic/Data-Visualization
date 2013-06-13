
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'


CSV.open('movies.csv') do |m|


page = Nokogiri::HTML(open("http://www.rottentomatoes.com/top/bestofrt/?year=2013"))

movies = page.css('.content_body.clearfix > table.left.rt_table tr')

movie_array = []

movies.each do |row|
	# movie.each do |a|
		movie =row.css('td')
		title = movie[2].text.strip.gsub('(2013)', '')
		rating = movie[1].strip.to_i

		m.write(movie + "\n") if !movie.nil? # movie != "Rank" && movie != "Tomatometer" && movie != "Title" && "No.of Reviews"
		end
end
