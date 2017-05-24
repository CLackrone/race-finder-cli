class RaceFinder::CLI
	def call
		puts "Welcome to Race Finder"
		get_zip
		get_radius
		list_races
		menu
	end

	def get_zip
		puts "Please enter the zip code you would like to search:"
		puts "20759"
	end

	def get_radius
		puts "Please enter the number of miles you would like to search surrounding your zip code: 5, 10, 15 or 25"
		puts "25"
	end

	def list_races 
		puts "1. Healthy Trails 5K"
		puts "2. Defeat DIPG Superhero Sprint & 6K"
		puts "3. 3rd Annual Totally Fun TuTu Run"
		puts "4. Alex's Run"
		puts "5. PGRC Running Start 5k Training - Summer 2017"
	end

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
