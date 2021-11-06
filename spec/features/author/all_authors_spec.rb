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
end