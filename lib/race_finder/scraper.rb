require_relative "../race_finder.rb"
require 'pry'


class RaceFinder::Scraper

	def self.scrape_race_index(url)
		doc = Nokogiri::HTML(open(url))

		rows = doc.css("table#race-finder-search-results-by-location tr")

		rows.shift

		rows[0..24].each do |row|
			race = RaceFinder::Race.new
			race.title = row.css("td.event").text
			race.location = row.css("td.city").text
			race.date = row.css("td.date").text
			race.url = row.css("td.event a").attr("href").value
		end
	end

	#This method is called on in the CLI based on user selection, scrapes race details: title, location, distance, highlights, and link
	def self.scrape_details(url)
		doc = Nokogiri::HTML(open(url))

		puts doc.css("#race-info").children[0..2].text
		puts doc.css("#race-info").children[3..5].text
		puts doc.css("#race-info").children[6..8].text
		puts doc.css("#race-info").children[13..15].text
		puts doc.css("#race-info").children[16..18].text
	end




end




#{(i+1).text}#{(i+2).text}