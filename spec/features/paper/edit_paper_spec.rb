require 'rails_helper'

describe "Edit paper page", type: :feature do
  it "should have single select box" do
    paper = Paper.create(title: 'Paper 1', venue: 'test venue', year: 2021)
    visit edit_paper_path(id: paper.id)
    expect(page).to have_selector 'select'
  end
end
