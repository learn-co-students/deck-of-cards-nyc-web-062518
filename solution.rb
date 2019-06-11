require 'pry'
class Deck
  def initialize
    @deck = []
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts","Clubs", "Diamonds", "Spades"]
    ranks.each do|rank|
      suits.each do |suit|
        @deck << Card.new(suit, rank)
      end
    end
  end

  def cards
    @deck
  end

  def choose_card #selects a random card from deck & removes it
    (self.cards).delete_at(rand(51))
  end
end

class Card
  attr_reader :rank, :suit
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end
#binding.pry
