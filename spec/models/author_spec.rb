require 'rails_helper'

describe "Author Model", type: :model do
    it "should have first name 'Alan', last name 'Turing' and homepage 'http://wikipedia.org/Alan_Turing'" do
        author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(author.first_name).to eq 'Alan'
        expect(author.last_name).to eq 'Turing'
        expect(author.homepage).to eq 'http://wikipedia.org/Alan_Turing'   
    end
    it "should have name 'Alan Turing'" do
        author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(author.name).to eq 'Alan Turing' 
    end
    it "is valid with arguments" do
        author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(author).to be_valid  
    end
    it "is not valid with arguments" do
        author = Author.new(first_name: 'Alan', last_name: '', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(author).to_not be_valid  
    end
    it "should have an empty list of papers" do
        author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(author.papers).to be_empty
    end
end