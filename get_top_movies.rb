require 'rubygems'
require 'nokogiri'
require 'open-uri'


File.open('movies.txt', 'w') do |m|


page = Nokogiri::HTML(open("http://www.rottentomatoes.com/top/bestofrt/?year=2013"))

movies = page.css('.content_body.clearfix > table.left.rt_table tr')

movies.each do |movie|
	movie = movie.text.gsub(/[\n\t]/,'').gsub('(2013)', '').downcase
	
	m.write(movie + "\n") if !movie.nil?  # movie != "Rank" && movie != "Tomatometer" && movie != "Title" && "No.of Reviews"
		end
	end

