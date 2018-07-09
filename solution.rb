class Deck
  attr_accessor :cards

  def initialize()
    @cards = []
    Card.suits.each do |suit|
      Card.ranks.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    card = self.cards.sample
    @cards.delete(card)
    card
  end
end

class Card
  @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end

  def self.ranks
    @@ranks
  end

  def self.suits
    @@suits
  end
end
