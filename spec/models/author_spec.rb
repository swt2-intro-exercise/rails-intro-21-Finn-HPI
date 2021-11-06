require 'rails_helper'

describe "Author Model", type: :model do
    it "shoulf have name 'Alan Turing' and homepage 'http://wikipedia.org/Alan_Turing'" do
        author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(author.first_name).to eq 'Alan'
        expect(author.last_name).to eq 'Turing'
        expect(author.homepage).to eq 'http://wikipedia.org/Alan_Turing'   
    end
end