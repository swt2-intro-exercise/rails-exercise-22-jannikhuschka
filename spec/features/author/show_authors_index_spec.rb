require 'rails_helper'

describe "Show authors index page", type: :feature do
    it "should exist at 'author_path', render without error and list all authors" do
        author1 = FactoryBot.create :turing
        author2 = FactoryBot.create :einstein
        visit authors_path
        expect(page).to have_text("Author index")
        expect(page).to have_text(author1.name)
        expect(page).to have_text(author2.name)
        expect(page).to have_link 'New', href: new_author_path
    end
end