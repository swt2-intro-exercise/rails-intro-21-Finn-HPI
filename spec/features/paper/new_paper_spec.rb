require 'rails_helper'

describe "New Paper page", type: :feature do
  it "should exist at new_paper_path and render withour error" do
    visit new_paper_path
  end
  it "should have text input fields for title, venue and year" do
    visit new_paper_path
    expect(page).to have_field 'paper[title]'
    expect(page).to have_field 'paper[venue]'
    expect(page).to have_field 'paper[year]'
  end
end
