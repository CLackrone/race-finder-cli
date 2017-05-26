class RaceFinder::Race
	attr_accessor :title, :location, :date

	@@races = []

	def initialize
		@@races << self
	end

	def races
		@@races
	end

end
