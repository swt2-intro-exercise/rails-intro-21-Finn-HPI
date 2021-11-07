require 'rails_helper'

describe "All paper pages", type: :feature do
    it "should find 'Paper 1' at year '1990' and none at '2021'" do
        Paper.create(title: 'Paper 1', venue: 'test venue', year: 2021)
        visit papers_path(year: '2021')
        expect(page).to have_text 'Paper 1'

        visit papers_path(year: '1990')
        expect(page).to_not have_text 'Paper 1'
    end
end