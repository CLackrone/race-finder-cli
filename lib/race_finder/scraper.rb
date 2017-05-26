require_relative "../race_finder.rb"
require 'pry'


class RaceFinder::Scraper



	#Scrapes index page based on user input and instantiates new instances of Race
	def self.scrape_race_index(url)
		doc = Nokogiri::HTML(open(url))
		binding.pry

		scraped_races = []

		#doc.css("table#race-finder-search-results-by-location").each do |list|
			#scraped_races = list.css().collect do |race|
			#	{
			#		:title=> race.css()
			#		:location=> race.css()
			#		:date=> race.css()
			#		:url=> race.css()

			#	}
			#end
		#end
		scraped_races
	end

	#This method is called on in the CLI based on user selection, scrapes specific race page for url
	def self.scrape_race_url
	end
end


#city: 
#event-title:
#date:
#link-to-race-details: race.css("td.event").attr("href") - This one still needs work

