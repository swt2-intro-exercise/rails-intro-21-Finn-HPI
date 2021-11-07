require 'rails_helper'

describe "Paper Model", type: :model do
    it "should have title 'Paper 1', venue '100' and year '2021'" do
      paper = Paper.new(title: 'Paper 1', venue: '100', year: 2021)
      expect(paper.title).to eq 'Paper 1'
      expect(paper.venue).to eq '100'
      expect(paper.year).to eq 2021  
    end
    it "is valid with arguments" do
      paper = Paper.new(title: 'Paper 1', venue: '100', year: 2021)
      expect(paper).to be_valid 
    end
    it "is not valid with arguments" do
      paper = Paper.new(title: 'Paper 1', venue: '', year: 2021)
      expect(paper).to_not be_valid
      paper = Paper.new(title: 'Paper 1', venue: '100', year: 'hallo')
      expect(paper).to_not be_valid
    end
end