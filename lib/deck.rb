
# deck.rb

require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = generate_all_cards
  end

  def generate_all_cards
    all_cards = Card::NUMS.flat_map do |value|
      Card::SUITS.flat_map do |suit|
        Card.new(value, suit)
      end
    end
    return all_cards
  end

  def draw(num = 1)
    raise ArgumentError, "Not enough cards in the deck." if num > count

    return @cards.pop(num)
  end

  def shuffle
    @cards.shuffle!
  end

  def count
    return @cards.count
  end
end
