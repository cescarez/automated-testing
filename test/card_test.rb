require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # 2
      expect(Card.new(2, :diamonds) .to_s).must_equal "2 of diamonds"
      #  10
      expect(Card.new(10, :hearts).to_s).must_equal "10 of hearts"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)
      #
      # For reference:
      #  1: Ace
      expect(Card.new(1, :diamonds).to_s).must_equal "Ace of diamonds"
      #  11: Jack
      expect(Card.new(11, :hearts).to_s).must_equal "Jack of hearts"
      #  12: Queen
      expect(Card.new(12, :spades).to_s).must_equal "Queen of spades"
      #  13: King
      expect(Card.new(13, :clubs).to_s).must_equal "King of clubs"
    end
  end

  describe "Reader methods" do
    before do
      @ace =  Card.new(1, :spades)
      @two = Card.new(2, :clubs)
      @ten = Card.new(10, :diamonds)
      @king = Card.new(13, :hearts)
    end

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      #  1: Ace
      expect(@ace.value).must_equal 1
      # 2:
      expect(@two.value).must_equal 2
      #  10:
      expect(@ten.value).must_equal 10
      #  13: King
      expect(@king.value).must_equal 13

    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      #  1: Ace
      expect(@ace.suit).must_equal :spades
      # 2:
      expect(@two.suit).must_equal :clubs
      #  10:
      expect(@ten.suit).must_equal :diamonds
      #  13: King
      expect(@king.suit).must_equal :hearts
    end
  end

end
