
# card.rb

class Card
  attr_reader :value, :suit
  NUMS = (1..13).to_a
  SUITS = [:spades, :clubs, :diamonds, :hearts]

  def initialize(value, suit)
    @value = NUMS.include?(value) ? value : (raise ArgumentError, "Invalid value entered for Card.")
    @suit = SUITS.include?(suit) ? suit : (raise ArgumentError, "Invalid suit entered for Card.")
  end

  def to_s
    case @value
    when 1
      return "Ace of #{suit.to_s}"
    when 2..10
      return "#{value} of #{suit.to_s}"
    when 11
      return "Jack of #{suit.to_s}"
    when 12
      return "Queen of #{suit.to_s}"
    when 13
      return "King of #{suit.to_s}"
    end
  end

end
