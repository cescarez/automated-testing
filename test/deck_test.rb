require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  describe "constructor" do

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

  describe "draw method" do

    it "returns a single Card instance if no parameters are given" do
      new_deck = Deck.new
      expect(new_deck.draw.length).must_equal 1
      expect(new_deck.draw[0]).must_be_instance_of Card
    end

    it "returns an array if multiple cards are drawn" do
      new_deck = Deck.new
      expect(new_deck.draw(2)).must_be_instance_of Array
    end

    it "returns a new Card value/suit with each draw" do
      new_deck = Deck.new
      card1 = new_deck.draw
      card2 = new_deck.draw
      expect(card1 == card2).must_equal false
    end

    it "raises an ArgumentError if @cards is empty and cards need to be drawn" do
      new_deck = Deck.new
      expect{ new_deck.draw(53) }.must_raise ArgumentError
    end
  end

  describe "count method" do
    it "returns the 52 for a newly created deck" do
      new_deck = Deck.new
      expect(new_deck.count).must_equal 52
    end

    it "returns fewer cards when cards have been drawn" do
      new_deck = Deck.new
      new_deck.draw(4)
      expect(new_deck.count).must_equal 48
    end

  end

end
