require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases

  before do
    @new_deck = Deck.new
  end

  describe "constructor" do

    let(:first_card) do
      @new_deck.cards.first
    end

    let(:last_card) do
      @new_deck.cards.last
    end

    it "can be created" do
      expect(@new_deck).must_be_instance_of Deck
    end

    #correct number of objects checked in block for .count
    it "deck has correct type of objects" do
      expect(first_card).must_be_instance_of Card
      expect(last_card).must_be_instance_of Card
    end

    it "deck is created with cards that have correct value and suit" do
      expect(first_card.value).must_equal 1
      expect(first_card.suit).must_equal :spades
      expect(last_card.value).must_equal 13
      expect(last_card.suit).must_equal :hearts
    end
  end

  describe "draw method" do

    let(:draw_deck) do
      Deck.new
    end

    it "returns an array of cards" do
      expect(draw_deck.draw).must_be_instance_of Array
      expect(draw_deck.draw(10)).must_be_instance_of Array
    end

    it "returns a single Card instance if no parameters are given" do
      expect(draw_deck.draw.length).must_equal 1
      expect(draw_deck.draw.first).must_be_instance_of Card
    end

    it "returns a new Card value/suit with each draw" do
      card1 = draw_deck.draw
      card2 = draw_deck.draw
      expect(card1 == card2).must_equal false
    end

    it "raises an ArgumentError if @cards is empty and cards need to be drawn" do
      expect{ @new_deck.draw(53) }.must_raise ArgumentError
    end
  end

  describe "count method" do
    it "returns the 52 for a newly created deck" do
      expect(@new_deck.count).must_equal 52
    end

    it "returns fewer cards when cards have been drawn" do
      @new_deck.draw(4)
      expect(@new_deck.count).must_equal 48
    end

  end

end
