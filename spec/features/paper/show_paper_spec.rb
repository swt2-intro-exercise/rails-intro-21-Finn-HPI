require 'rails_helper'

describe "Show paper page", type: :feature do
  it "should list author 'Alan Turing' for 'Paper 1'" do
    paper = Paper.create(title: 'Paper 1', venue: 'test venue', year: 2021)
    author = Author.create(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    paper.authors.push(author)

    visit paper_path(id: paper.id)
    expect(page).to have_text 'Alan Turing'
  end
end
