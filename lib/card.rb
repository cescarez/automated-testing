
# card.rb

class Card
  attr_reader :value, :suit
  NUMS = (1..13).to_a
  SUITS = [:spades, :clubs, :diamonds, :hearts]

  def initialize(value, suit)
    @value = NUMS.include?(value) ? value : (raise ArgumentError, "Invalid value entered for Card.")
    @suit = SUITS.include?(suit) ? suit : (raise ArgumentError, "Invalid suit entered for Card.")
    @number = human_readable(value)
  end

  def to_s
    return "#{@number} of #{@suit.to_s}"
  end

  def human_readable(value)
    case value
    when 1
      @number = "Ace"
    when 2..10
      @number = value
    when 11
      @number = "Jack"
    when 12
      @number = "Queen"
    when 13
      @number = "King"
    end
  end

end
