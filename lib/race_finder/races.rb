require_relative "../race_finder.rb"


class RaceFinder::Race
	attr_accessor :title, :location, :date

	@@races = []

	def initialize(race_hash)
		race_hash.each {|key, value| self.send(("#{key}="), value)}
		@@races << self
	end

	def self.create_from_collection(race_array)
		race_array.each do |hash|
			self.new(hash)
		end
	end

	def races
		@@races
	end

end


