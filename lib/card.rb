class Card
    attr_reader :question, :answer, :category
    def initialize(question, answer, category)
        @question = question
        @answer = answer
        @category = category
    end
end

card = Card.new("What is the capital of Alaska?", "Juneau", :geography)

card2 = Card.new("What computer do we use at Turing?", "Macbook", :turing)

card3 = Card.new("What is the oldest sport in America?", "Lacrosse", :sports)