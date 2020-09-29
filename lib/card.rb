
# card.rb
NUMS = (1..13).to_a
SUITS = [:spades, :clubs, :diamonds, :hearts]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = NUMS.include?(value) ? value : (raise ArgumentError, "Invalid value entered for Card.")
    @suit = SUITS.include?(suit) ? suit : (raise ArgumentError, "Invalid suit entered for Card.")
  end

  def to_s
    return "#{human_readable(@value)} of #{@suit.to_s}"
  end

  def human_readable(value)
    case value
    when 1
      return "Ace"
    when 2..10
      return value
    when 11
      return "Jack"
    when 12
      return "Queen"
    when 13
      return "King"
    end
  end

end
