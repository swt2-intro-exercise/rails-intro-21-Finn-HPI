require 'rails_helper'

describe "Edit author page", type: :feature do
  it "should update 'Alan Turing' to 'Alan Harper'" do
    Author.create(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    visit authors_path
    expect(page).to have_selector 'td', text: 'Alan Turing'
    Author.update(last_name: 'Harper')
    visit authors_path
    expect(page).to have_selector 'td', text: 'Alan Harper'  
  end
end
