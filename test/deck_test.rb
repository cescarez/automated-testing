require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  describe "You can create a Card instance" do

    it "can be created" do
      expect(Deck.new).must_be_instance_of Deck
    end

    it "deck has correct number and type of objects" do
      expect(Deck.new.cards.count).must_equal 52
      expect(Deck.new.cards[0]).must_be_instance_of Card
      expect(Deck.new.cards[-1]).must_be_instance_of Card
    end

    it "deck is created with cards that have correct value and suit" do
      expect(Deck.new.cards[0].value).must_equal 1
      expect(Deck.new.cards[0].suit).must_equal :spades
      expect(Deck.new.cards[-1].value).must_equal 13
      expect(Deck.new.cards[-1].suit).must_equal :hearts
    end
  end
end
