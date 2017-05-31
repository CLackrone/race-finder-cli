require_relative "../race_finder.rb"

class RaceFinder::CLI

	def call
		puts "Welcome racers!"
		#get_state
		make_races
		puts "On your mark!"
		sleep 1
		puts "Get set!"
		sleep 1
		puts "Go!"
		list_races		
		race_details

	end

	def get_state
		puts "Type in the 2-letter code for the state you would like to search:"
		state_code = gets.strip.upcase
		if /\b\D{2}\b/.match?(state_code)
			state_code
		else 
			puts "Please enter a valid 2-letter state code"
			get_state
		end
		

	end

	def race_details
		puts "Enter the number of the race you would like to view:"
		race_choice = gets.to_i
		if race_choice.between?(1,25)
			RaceFinder::Scraper.scrape_details("http://www.runnersworld.com#{RaceFinder::Race.all[race_choice-1].url}")
		else
			puts "Please enter a valid number"
			race_details
		end
		puts "Would you like to view another race?"
		answer = gets.strip.upcase
		if answer == "YES"
			race_details
		else
			puts "Goodbye!"
		end
	end

	def make_races
		RaceFinder::Scraper.scrape_race_index("http://www.runnersworld.com/race-finder/results?state=#{get_state}&by_location=1")
	end

	def list_races 
		RaceFinder::Race.all.each_with_index do |race, i|
			puts "#{i+1}. #{race.title} - #{race.date} - #{race.location}"
		end
	end

end
