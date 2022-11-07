require 'rails_helper'

RSpec.describe "papers/show", type: :view do
  before(:each) do
    assign(:paper, Paper.create!(
      title: "Title",
      venue: "Venue",
      year: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/2/)
  end
end

describe "Show paper page", type: :feature do
    it "should display author(s) for a paper" do
        alan = FactoryBot.create :turing
        paper = FactoryBot.create :paper
        paper.authors << alan
        visit paper_path(paper)
        expect(page).to have_text("Alan Turing")
    end
end
