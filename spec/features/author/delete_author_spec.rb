require 'rails_helper'

describe "Author index page", type: :feature do
    it "should have a link to delete an author" do
        visit authors_path
        expect(page).to have_link('Delete', href: author_path(@alan_turing))
    end
end