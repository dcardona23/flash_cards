
require 'card.rb'

class Deck
    attr_reader :cards

    def initialize; end

    def cards
        ObjectSpace.each_object(Card) .to_a
    end
end

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
deck = Deck.new(cards)
