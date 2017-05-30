require_relative "../race_finder.rb"
require 'pry'


class RaceFinder::Race
	attr_accessor :title, :location, :date, :url

	@@all = []

	def initialize
		@@all << self
	end

	def self.all
		@@all
	end

end


