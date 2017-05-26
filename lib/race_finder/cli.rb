class RaceFinder::CLI

	attr_reader :state_code
	def call
		puts "Welcome racers!"
		get_state
		puts "On your mark!"
		sleep 1
		puts "Get set!"
		sleep 1
		puts "Go!"
		list_races
		get_race
		#menu
	end

	def get_state
		puts "Type in the 2-letter code for the state you would like to search:"
		self.state_code = gets.strip.upcase
		if /\b\D{2}\b/.match?(state_code)
			nil
		else 
			puts "Please enter a valid 2-letter state code"
			get_state
		end
	end

	def get_race
	end

	def list_races 
		puts "1. Healthy Trails 5K"
		puts "2. Defeat DIPG Superhero Sprint & 6K"
		puts "3. 3rd Annual Totally Fun TuTu Run"
		puts "4. Alex's Run"
		puts "5. PGRC Running Start 5k Training - Summer 2017"
	end

	#how will menu work? Definitely calls get_race
	def menu
		puts "Type the number of the race for which you would like more info:"
		puts "2"
		puts "Defeat DIPG Superhero Sprint & 6K"
		puts "url: https://runsignup.com/Race/MD/Bethesda/Superhero6K"
		puts "location: Bethesda, MD US 20817"
		puts "date: Sunday 5/28/17"
		puts "distance: 6K, 1K"
		puts "Would you like information about another race?"
		if "yes"
			menu
		else
			"Goodbye"
		end
	end

end
