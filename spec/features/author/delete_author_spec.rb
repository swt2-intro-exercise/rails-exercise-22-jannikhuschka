require 'rails_helper'

describe "Author index page", type: :feature do
    it "should have a link to delete an author" do
        alan = FactoryBot.create :turing
        visit authors_path
        expect(page).to have_link('Delete', href: author_path(alan))
    end

    it "should delete an author" do
        alan = FactoryBot.create :turing
        visit authors_path
        click_link('Delete')
        expect(Author.find_by(id: alan.id)).to be_nil
    end
end