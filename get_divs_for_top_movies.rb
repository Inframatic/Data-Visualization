require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'

File.open('divs_for_top_movie.html', 'w') do |html|

	movie_array = []

	CSV.foreach('movies.csv') do |row|

		title = row[0]
		rating = row[1]
		all = [title, rating]
		movie_array << all

		# row.each do |i| 
		# 	title = i.read
		# 	rating = i.read
		# 	all = [title, rating]
		# movie_array << all
    	
    end


	movie_array.each do |row|
		
 	  div_height = (row[0]).to_s
    html.write("<div class='bar_wrapper' data-name='" + row[0] + "'>\n")
    html.write("  <div class='bar' style='height:" + div_height + "%;'></div>\n")
    html.write("</div>\n")

	end
end