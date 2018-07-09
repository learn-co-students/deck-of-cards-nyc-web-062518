class Deck

  RANK = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  SUIT = ["Hearts", "Clubs", "Diamonds", "Spades"]

  def initialize
    @cards = []
    Deck.suit.each do |suit|
      Deck.rank.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def self.rank
    RANK
  end

  def self.suit
    SUIT
  end

  def cards
    @cards.shuffle!
  end

  def choose_card
    cards.shift
  end

end

class Card

  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

end
