
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'




page = Nokogiri::HTML(open("http://www.rottentomatoes.com/top/bestofrt/?year=2013"))

movies = page.css('.content_body.clearfix > table.left.rt_table tr')

movie_array = []
header = ['title', 'rating']
movie_array << header

movies.each do |row|
	# movie.each do |a|
		movie =row.css('td')
		title = movie[2].text.strip.gsub('(2013)', '') if !movie[2].nil? && !movie[2].text.empty?
		rating = movie[1].text.strip.to_i if !movie[1].nil?
		 data = [title, rating]
		 movie_array << data
end

CSV.open('movies.csv', 'wb') do |csvrow|
	movie_array.each do |m|
		csvrow << m
	end
end

		#m.write(movie + "\n") if !movie.nil? # 
		# movie_array.each do |d|
		# 	m << d
