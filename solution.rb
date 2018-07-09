require "pry"

class Deck

  @@rank = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
  @@suit = %w{Hearts Clubs Diamonds Spades}

  attr_reader :suit, :rank

  def initialize
    @cards = []
    Deck.suit.each do |suit|
      Deck.rank.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def self.rank
    @@rank
  end

  def self.suit
    @@suit
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
