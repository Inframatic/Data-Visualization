require 'rubygems'
require 'nokogiri'
require 'open-uri'

File.open('divs_for_top_movies.html', 'w') do |html|
	movies_with_ratings = []
	File.open("movies.txt", "r") do |txt|
		while (line = txt.gets)
			movies_with_reviews << [line.chomp, txt.gets.to_i]
		end
	end
end


