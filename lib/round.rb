class Round
    attr_reader :deck, :turns
    def initialize(deck)
        @deck = deck
        @turns = []
    end

    def current_card
        @deck.cards.first  
    end

    def take_turn(guess)
        new_turn = Turn.new(guess, @deck.cards.first)
        @turns << new_turn
        @deck.cards.shift
        new_turn
    end
end