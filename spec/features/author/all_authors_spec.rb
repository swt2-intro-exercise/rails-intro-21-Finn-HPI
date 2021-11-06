require 'rails_helper'

describe "All authors page", type: :feature do
    it "should have table with schema 'Name', 'HomePage'" do
        visit authors_path
        expect(page).to have_xpath '//table/tr'
        expect(page).to have_selector 'th', text: 'Name'
        expect(page).to have_selector 'th', text: 'Homepage'
    end
    it "should have a link to add a new author" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
    end
    it "should have an author 'Alan Turing' with a link to the author's details" do
        Author.create(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
        visit authors_path
        expect(page).to have_selector 'td', text: 'Alan Turing'
        expect(page).to have_link 'Show'
    end
end