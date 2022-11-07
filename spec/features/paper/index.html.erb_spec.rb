require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      Paper.create!(
        title: "Title",
        venue: "Venue",
        year: 2
      ),
      Paper.create!(
        title: "Title",
        venue: "Venue",
        year: 2
      )
    ])
  end

  it "renders a list of papers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Venue".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end

describe "Paper index page", type: :feature do
  it "should have a link to edit papers" do
    paper = FactoryBot.create :paper
    visit papers_path
    expect(page).to have_link('edit', href: edit_paper_path(paper))
  end

  it "should have a link to delete papers" do
    paper = FactoryBot.create :paper
    visit papers_path
    expect(page).to have_link('delete', href: paper_path(paper))
  end
end
