require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'

header = ['title', 'rating']

CSV.foreach('movies.csv') do |row|

	header.each_index do |i| 
		if header[i] != row[i]
			puts "#{header[i]} is #{row[i]}"
		end
	end
end


	# for i in 0..100 do
	# 	div_height = (100-())


