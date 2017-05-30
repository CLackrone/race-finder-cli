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

		doc.css()


	end

end



