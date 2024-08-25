class Turn
    attr_reader :card, :guess

    def initialize(guess, card)
        @guess = guess
        @card = card
    end

    def correct?
        return true if @guess.downcase == @card.answer.downcase
        false
    end

    def feedback
        if @guess.downcase == @card.answer.downcase
        "Correct!"
        else
        "Incorrect."
        end
    end

    def ==(other_turn)
        self.guess == other_turn.guess && self.card == other_turn.card
    end
end