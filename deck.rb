class Deck
  attr_accessor :cards

  def initialize
    @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @cards = 52.times.map {Card.new(@rank.sample, @suit.sample)}
  end
end

class Card
  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end
