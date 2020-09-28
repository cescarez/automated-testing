
# card.rb

class Card
  attr_reader :value, :suit
  NUMS = (1..13).to_a
  SUITS = [:hearts, :spades, :clubs, :diamonds]

  def initialize(value, suit)
    @value = NUMS.include?(value) ? value : (raise ArgumentError, "Invalid value entered for Card.")
    @suit = SUITS.include?(suit) ? suit : (raise ArgumentError, "Invalid suit entered for Card.")
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
