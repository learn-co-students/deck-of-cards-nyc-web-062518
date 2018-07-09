require 'pry'

class Deck
	SUIT_ARRAY = ["Hearts", "Clubs", "Diamonds", "Spades"].freeze
	RANK_ARRAY = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].freeze

	attr_accessor :cards
	
	def initialize
		@cards = []
		SUIT_ARRAY.each do |suit|
			RANK_ARRAY.each do |rank|
				self.cards << Card.new(suit, rank)
			end
		end
		@cards
	end


	def choose_card
		chosen_card = cards.sample
		cards.delete(chosen_card)
		# binding.pry
	end

end

class Card

	attr_reader :suit, :rank

	def initialize(suit, rank)
		@suit, @rank = suit, rank
	end

end