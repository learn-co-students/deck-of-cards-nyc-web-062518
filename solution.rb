require 'pry'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    suit_array = ["Hearts", "Clubs", "Diamonds", "Spades"]
    rank_array = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
      suit_array.each do |suit|
        rank_array.each do |rank|
          cards << Card.new(suit, rank)
          end
        end
      cards
    end

  def choose_card
    chosen_card = @cards.sample
    cards.delete(chosen_card)
  end
end

class Card

  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit, @rank = suit, rank
  end
end

deck = Deck.new
