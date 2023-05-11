require './lib/card'
require './lib/turn'

RSpec.describe Turn do
    it 'will check guess' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :geography)

        turn = Turn.new("Juneau", card1)
        
        expect(turn.correct?).to eq true
        expect(turn.card).to eq(card1)
    end
    
    it 'will give feedback' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :geography)

        card2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)

        turn = Turn.new("Juneau", card1)

        turn2 = Turn.new("Saturn", card2)

        expect(turn2.guess).to eq("Saturn")

        expect(turn2.card).to eq(card2)

        expect(turn2.correct?).to eq false

        expect(turn.feedback).to eq("Correct!")

        expect(turn2.feedback).to eq("Incorrect!")
    end
end

   